import 'dart:async';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ApiService {
  String _baseUrl = "http://api.randomuser.me/";

  Future<Response> loadUser(int size) {
    return http.get("$_baseUrl?results=$size");
  }
}