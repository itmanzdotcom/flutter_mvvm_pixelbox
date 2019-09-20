import 'package:fmvvm_pixelbox/model/status.dart';

class Resource<T> {
  Status status;
  T data;
  String message;

  Resource(this.status, this.data, this.message);

  static Resource<T> loading<T>(T data) {
    return Resource(Status.LOADING, data, null);
  }

  static Resource<T> success<T>(T data) {
    return Resource(Status.SUCCESS, data, null);
  }

  static Resource<T> warning<T>(String message, T data) {
    return Resource(Status.WARNING, data, message);
  }

  static Resource<T> error<T>(String message, T data) {
    return Resource(Status.ERROR, data, message);
  }

  static Resource<T> network<T>(String message, T data) {
    return Resource(Status.NETWORK, data, message);
  }

  static Resource<T> unauthorized<T>(String message, T data) {
    return Resource(Status.UNAUTHORIZED, data, message);
  }
}