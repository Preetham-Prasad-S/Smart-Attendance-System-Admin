class AuthUserException implements Exception {
  final String message;

  const AuthUserException(this.message);

  @override
  String toString() => "AuthException : $message";
}
