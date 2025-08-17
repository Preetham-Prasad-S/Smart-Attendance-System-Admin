import 'package:fpdart/fpdart.dart';
import 'package:institute_attendance_system/feature/auth/core/exceptions/failure.dart';
import 'package:institute_attendance_system/feature/auth/domain/entities/auth_user.dart';

abstract class AuthRepository {
  const AuthRepository();
  Future<Either<Failure, AuthUserEntity>> login(
      {required String email, required String password});
  Future<Either<Failure, AuthUserEntity>> signup(
      {required String email, required String password});
  Future<Either<Failure, void>> logout();
  Future<Either<Failure, AuthUserEntity>> getCurrentUser();
}
