class FetchDataException implements Exception {
  String _message;

  FetchDataException(this._message);

  String toString() {
    return "$_message";
  }
}