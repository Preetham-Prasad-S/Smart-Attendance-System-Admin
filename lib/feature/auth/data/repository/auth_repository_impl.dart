import 'package:fpdart/src/either.dart';
import 'package:institute_attendance_system/feature/auth/core/exceptions/failure.dart';
import 'package:institute_attendance_system/feature/auth/data/datasources/auth_remote_datasource.dart';
import 'package:institute_attendance_system/feature/auth/domain/entities/auth_user.dart';
import 'package:institute_attendance_system/feature/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource _remoteDatasource;

  const AuthRepositoryImpl(this._remoteDatasource);

  @override
  Future<Either<Failure, AuthUser>> signup(
      {required String email, required String password}) async {
    try {
      final response =
          await _remoteDatasource.signup(email: email, password: password);

      if (response != null) {
        return right(AuthUser(id: response.id, email: response.email));
      }

      return left(Failure(message: "Sign Up Failed"));
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthUser>> login(
      {required String email, required String password}) async {
    try {
      final response =
          await _remoteDatasource.login(email: email, password: password);

      if (response != null) {
        return right(AuthUser(id: response.id, email: response.email));
      }

      return left(Failure(message: "Login Failed"));
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await _remoteDatasource.logout();
      return right(null);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthUser>> getCurrentUser() async {
    try {
      final user = await _remoteDatasource.getCurrentUser();

      if (user != null) {
        return right(AuthUser(id: user.id, email: user.email));
      }
      return left(Failure(message: "Can't get current user"));
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
