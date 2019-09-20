class UnauthorizedException implements Exception {
  String _message;

  UnauthorizedException(this._message);

  String toString() {
    return "$_message";
  }
}