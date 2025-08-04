import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../entities/auth_user.dart';
import '../repositories/auth_repository.dart';

class SignUpUsecase {
  final AuthRepository repository;

  SignUpUsecase(this.repository);

  Future<AuthUser> call(String email, String password) {
    return repository.signUp(email: email, password: password);
  }
}
final signUpUseCaseProvider = Provider<SignUpUsecase>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return SignUpUsecase(repository);
},)