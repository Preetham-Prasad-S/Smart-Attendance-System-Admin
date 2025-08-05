import '../../data/models/auth_user_model.dart';
import '../../domain/errors/auth_exception.dart';

import '../../data/datasources/auth_remote_datasource.dart';
import '../../domain/entities/auth_user.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final supabase.SupabaseClient _client;

  AuthRemoteDatasourceImpl(this._client);

  @override
  Future<AuthUser?> login(String email, String password) async {
    try {
      final response = await _client.auth
          .signInWithPassword(password: password, email: email);

      final user = response.user;

      if (user == null) {
        return null;
      }

      return AuthUserModel(id: user.id, email: user.email ?? '').toEntity();
    } on AuthException {
      rethrow;
    } catch (e) {
      throw AuthException("An unknown error occured during login");
    }
  }

  @override
  Future<AuthUser?> signUp(String email, String password) async {
    try {
      final response =
          await _client.auth.signUp(password: password, email: email);

      final user = response.user;

      if (user != null) {
        return AuthUserModel(id: user.id, email: user.email ?? '').toEntity();
      }

      return null;
    } on AuthException {
      rethrow;
    } catch (e) {
      throw AuthException("An unknown error occured during signup");
    }
  }

  @override
  Future<void> logout() async {
    await _client.auth.signOut();
  }

  @override
  AuthUser? getCurrentUser() {
    final user = _client.auth.currentUser;

    if (user != null) {
      return AuthUserModel(id: user.id, email: user.email ?? '').toEntity();
    }
    return null;
  }
}
