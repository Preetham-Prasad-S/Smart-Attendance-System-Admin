import '../entities/auth_user.dart';
import '../repositories/auth_repository.dart';

class SignUpUsecase {
  final AuthRepository repository;

  SignUpUsecase(this.repository);

  Future<AuthUser> call(String email, String password) {
    return repository.signUp(email: email, password: password);
  }
}
