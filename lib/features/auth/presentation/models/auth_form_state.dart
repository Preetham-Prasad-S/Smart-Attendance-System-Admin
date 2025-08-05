class AuthFormState {
  final String email;
  final String password;
  final bool showPassword;
  final bool isLogin;

  const AuthFormState(
      {this.email = '',
      this.password = '',
      this.showPassword = false,
      this.isLogin = true});

  bool get isValid => email.trim().isNotEmpty && password.trim().isNotEmpty;

  AuthFormState copyWith(
      {String? email, String? password, bool? showPassword, bool? isLogin}) {
    return AuthFormState(
        email: email ?? this.email,
        password: password ?? this.password,
        showPassword: showPassword ?? this.showPassword,
        isLogin: isLogin ?? this.isLogin);
  }
}
