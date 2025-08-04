import 'package:institute_attendance_system/features/auth/data/models/auth_user_model.dart';

import '../../data/datasources/auth_remote_datasource.dart';
import '../../domain/entities/auth_user.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {

  final supabase.SupabaseClient _client;

  AuthRemoteDatasourceImpl(this._client)

  @override
  Future<AuthUser?> login(String email, String password) async {
    try {
      final respone = await _client.auth.signInWithPassword(email : email,password: password);
    
      if (respone.user == null) {
        return null;
      }

      return AuthUserModel(id: id, email: email).toEntity();
    
    
    } catch (e) {
      
    }
  }
}
