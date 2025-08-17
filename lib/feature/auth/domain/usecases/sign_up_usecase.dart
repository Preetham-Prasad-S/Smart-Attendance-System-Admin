import 'package:fpdart/fpdart.dart';
import 'package:institute_attendance_system/feature/auth/domain/repository/auth_repository.dart';
import '/feature/auth/core/exceptions/failure.dart';
import '/feature/auth/core/usecases/usecase.dart';
import '/feature/auth/domain/entities/auth_user.dart';

class SignUpParams {
  final String email;
  final String password;
  const SignUpParams(this.email, this.password);
}

class SignUpUsecase
    implements Usecase<Either<Failure, AuthUserEntity>, SignUpParams> {
  final AuthRepository _repository;

  const SignUpUsecase(this._repository);

  @override
  Future<Either<Failure, AuthUserEntity>> call(SignUpParams params) async {
    return await _repository.signup(
        email: params.email, password: params.password);
  }
}
