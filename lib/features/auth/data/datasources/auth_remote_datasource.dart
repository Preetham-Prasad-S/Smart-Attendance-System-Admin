import '../../domain/entities/auth_user.dart';

abstract class AuthRemoteDatasource {
  Future<AuthUser?> login(String email, String password);
  Future<AuthUser?> signUp(String email, String password);
  Future<void> logout();
  AuthUser? getCurrentUser();
}
