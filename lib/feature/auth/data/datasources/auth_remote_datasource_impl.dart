import 'package:institute_attendance_system/feature/auth/data/datasources/auth_remote_datasource.dart';
import 'package:institute_attendance_system/feature/auth/data/models/auth_user_model.dart';
import 'package:institute_attendance_system/feature/auth/domain/exceptions/auth_user_exception.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final SupabaseClient _client;

  AuthRemoteDatasourceImpl(this._client);

  @override
  Future<AuthUserModel?> signup(
      {required String email, required String password}) async {
    try {
      final response =
          await _client.auth.signUp(email: email, password: password);

      final user = response.user;

      if (user != null) {
        return AuthUserModel(id: user.id, email: user.email);
      }
      return null;
    } on AuthException catch (e) {
      throw AuthUserException(e.message);
    } catch (e) {
      throw AuthUserException(e.toString());
    }
  }

  @override
  Future<AuthUserModel?> login(
      {required String email, required String password}) async {
    try {
      final response = await _client.auth
          .signInWithPassword(email: email, password: password);

      final user = response.user;

      if (user != null) {
        return AuthUserModel(id: user.id, email: user.email);
      }
      return null;
    } on AuthException catch (e) {
      throw AuthUserException(e.message);
    } catch (e) {
      throw AuthUserException(e.toString());
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _client.auth.signOut();
    } on AuthException catch (e) {
      throw AuthUserException(e.message);
    } catch (e) {
      throw AuthUserException(e.toString());
    }
  }

  @override
  Future<AuthUserModel?> getCurrentUser() async {
    try {
      final user = _client.auth.currentUser;

      if (user != null) {
        return AuthUserModel(id: user.id, email: user.email);
      }
      return null;
    } on AuthException catch (e) {
      throw AuthUserException(e.message);
    } catch (e) {
      throw AuthUserException(e.toString());
    }
  }
}
