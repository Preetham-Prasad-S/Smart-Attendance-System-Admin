import 'package:fpdart/fpdart.dart';
import 'package:institute_attendance_system/feature/auth/domain/repository/auth_repository.dart';
import '/feature/auth/core/exceptions/failure.dart';
import '/feature/auth/core/usecases/usecase.dart';
import '/feature/auth/domain/entities/auth_user.dart';

class LoginParams {
  final String email;
  final String password;
  const LoginParams(this.email, this.password);
}

class LoginUsecase implements Usecase<Either<Failure, AuthUser>, LoginParams> {
  final AuthRepository _repository;

  const LoginUsecase(this._repository);

  @override
  Future<Either<Failure, AuthUser>> call(LoginParams params) async {
    return await _repository.login(
        email: params.email, password: params.password);
  }
}
