import 'package:institute_attendance_system/feature/auth/data/models/auth_user_model.dart';

abstract class AuthRemoteDatasource {
  Future<AuthUserModel?> login(
      {required String email, required String password});
  Future<AuthUserModel?> signup(
      {required String email, required String password});
  Future<void> logout();
  Future<AuthUserModel?> getCurrentUser();
}
