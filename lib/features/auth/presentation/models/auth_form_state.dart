class AuthFormState {
  final String email;
  final String password;
  final bool showPassword;

  const AuthFormState({
    this.email = '',
    this.password = '',
    this.showPassword = false,
  });

  bool get isValid => email.trim().isNotEmpty && password.trim().isNotEmpty;

  AuthFormState copyWith({
    String? email,
    String? password,
    bool? showPassword,
  }) {
    return AuthFormState(
      email: email ?? this.email,
      password: password ?? this.password,
      showPassword: showPassword ?? this.showPassword,
    );
  }
}
