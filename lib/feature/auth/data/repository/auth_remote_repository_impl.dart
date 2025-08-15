import 'package:fpdart/src/either.dart';
import 'package:institute_attendance_system/feature/auth/core/exceptions/failure.dart';
import 'package:institute_attendance_system/feature/auth/data/datasources/auth_remote_datasource.dart';
import 'package:institute_attendance_system/feature/auth/domain/entities/auth_user.dart';
import 'package:institute_attendance_system/feature/auth/domain/repository/auth_remote_repository.dart';

class AuthRemoteRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource _remoteDatasource;

  const AuthRemoteRepositoryImpl(this._remoteDatasource);

  @override
  Future<Either<Failure, AuthUser>> signup(
      {required String email, required String password}) async {
    try {
      final response =
          await _remoteDatasource.signup(email: email, password: password);

      if (response != null) {
        print(right(AuthUser(id: response.id, email: response.email)));
        return right(AuthUser(id: response.id, email: response.email));
      }

      return left(Failure(message: "Sign Up Failed"));
    } catch (e) {
      print(Failure(message: e.toString()));
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

      return left(Failure(message: "Sign Up Failed"));
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<void> logout() {
    try {} catch (e) {}
  }

  @override
  Future<void> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }
}
