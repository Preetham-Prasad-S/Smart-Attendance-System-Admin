import 'package:institute_attendance_system/features/auth/data/datasources/auth_remote_datasource.dart';
import '../../domain/errors/auth_exception.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../models/auth_user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource datasource;

  AuthRepositoryImpl(this.datasource);

  @override
  Future<AuthUser> login(
      {required String email, required String password}) async {
    try {
      final supabaseUser = await datasource.login(email, password);

      if (supabaseUser != null) {
        return AuthUserModel(id: supabaseUser.id, email: supabaseUser.email)
            .toEntity();
      }
      throw const AuthException('Login Failed: Invalid Crendentials');
    } on AuthException {
      rethrow;
    } catch (e) {
      throw const AuthException('Login Failed. Please Try Again');
    }
  }

  @override
  Future<AuthUser> signUp(
      {required String email, required String password}) async {
    try {
      final supabaseUser = await datasource.signUp(email, password);

      if (supabaseUser != null) {
        return AuthUserModel(id: supabaseUser.id, email: supabaseUser.email)
            .toEntity();
      }
      throw const AuthException('Sign Up Failed : User creation failed');
    } on AuthException {
      rethrow;
    } catch (e) {
      throw const AuthException('Sign Up Failed. Please try again');
    }
  }

  @override
  Future<void> logout() async {
    try {
      await datasource.logout();
    } catch (e) {
      throw const AuthException('Logout Failed. Please try again');
    }
  }

  @override
  Future<AuthUser?> getCurrentUser() async {
    try {
      final supabaseUser = datasource.getCurrentUser();

      if (supabaseUser == null) return null;

      return AuthUserModel(id: supabaseUser.id, email: supabaseUser.email)
          .toEntity();
    } catch (e) {
      throw const AuthException('Failed to get current user.');
    }
  }
}
