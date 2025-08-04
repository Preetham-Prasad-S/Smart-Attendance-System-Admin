import 'package:institute_attendance_system/features/auth/domain/entities/auth_user.dart';

abstract class AuthRemoteDatasource {
  Future<AuthUser> login(String email, String password);
  Future<AuthUser> signUp(String email, String password);
}
