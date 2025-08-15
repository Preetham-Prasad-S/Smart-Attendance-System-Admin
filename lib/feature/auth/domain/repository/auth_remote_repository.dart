import 'package:fpdart/fpdart.dart';
import 'package:institute_attendance_system/feature/auth/core/exceptions/failure.dart';
import 'package:institute_attendance_system/feature/auth/domain/entities/auth_user.dart';

abstract class AuthRepository {
  const AuthRepository();
  Future<Either<Failure, AuthUser>> login(
      {required String email, required String password});
  Future<Either<Failure, AuthUser>> signup(
      {required String email, required String password});
  Future<void> logout();
  Future<void> getCurrentUser();
}
