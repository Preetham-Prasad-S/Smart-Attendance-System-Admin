import 'package:fpdart/fpdart.dart';
import 'package:institute_attendance_system/feature/auth/core/exceptions/failure.dart';
import 'package:institute_attendance_system/feature/auth/core/usecases/usecase.dart';
import 'package:institute_attendance_system/feature/auth/domain/repository/auth_repository.dart';

class LogoutUsecase implements Usecase<Either<Failure, void>, NoParams> {
  final AuthRepository _repository;

  LogoutUsecase(this._repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return await _repository.logout();
  }
}
