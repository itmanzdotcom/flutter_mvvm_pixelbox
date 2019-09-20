import 'dart:async';
import 'dart:convert';

import 'package:fmvvm_pixelbox/api/api_service.dart';
import 'package:fmvvm_pixelbox/model/resource.dart';
import 'package:fmvvm_pixelbox/model/user.dart';
import 'package:fmvvm_pixelbox/repository/repository.dart';
import 'package:fmvvm_pixelbox/utils/fetch_data_exp.dart';
import 'package:fmvvm_pixelbox/utils/unauthorized_exp.dart';
import 'package:http/http.dart';
import 'package:rxdart/rxdart.dart';

class UserRepository extends Repository {
  ApiService _apiService;

  UserRepository(this._apiService);

  final JsonDecoder _decoder = JsonDecoder();

  final _data = PublishSubject<Resource<List<User>>>();

  Future<PublishSubject<Resource<List<User>>>> loadUser(int size) async {
    _apiService.loadUser(size).then((Response response) {
      final String jsonBody = response.body;
      final statusCode = response.statusCode;

      if (statusCode < 200 || statusCode >= 300 || jsonBody == null) {
        throw FetchDataException(
            "Error while getting contacts [StatusCode:$statusCode, Error:${response
                .reasonPhrase}]");
      } else if (statusCode >= 400 && statusCode <= 499) {
        throw UnauthorizedException("Unauthorized 401");
      }

      final userContainer = _decoder.convert(jsonBody);
      final List userItems = userContainer['results'];

      return userItems.map((contactRaw) => User.fromMap(contactRaw)).toList();
    }).then((List<User> response) {
      _data.add(Resource.success(response));
    }).catchError((onError) {
      _data.add(Resource.error(onError.toString(), null));
    });

    return _data;
  }

  @override
  void dispose() => _data.close();
}