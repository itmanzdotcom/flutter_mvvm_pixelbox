import 'dart:async';

import 'package:fmvvm_pixelbox/factory/view_model.dart';
import 'package:fmvvm_pixelbox/model/resource.dart';
import 'package:fmvvm_pixelbox/model/user.dart';
import 'package:fmvvm_pixelbox/repository/user_repository.dart';
import 'package:rxdart/rxdart.dart';

class UserViewModel extends ViewModel {
  UserRepository _userRepository;

  UserViewModel(this._userRepository);

  Future<PublishSubject<Resource<List<User>>>> loadUser(int size) async {
    return _userRepository.loadUser(size);
  }

  @override
  void dispose() {
    _userRepository.dispose();
  }
}
