import 'package:fpdart/fpdart.dart';
import 'package:institute_attendance_system/feature/auth/core/exceptions/failure.dart';
import 'package:institute_attendance_system/feature/auth/core/usecases/usecase.dart';
import 'package:institute_attendance_system/feature/auth/domain/entities/auth_user.dart';
import 'package:institute_attendance_system/feature/auth/domain/repository/auth_repository.dart';

class GetCurrentUserUsecase
    implements Usecase<Either<Failure, AuthUser>, NoParams> {
  final AuthRepository _repository;

  GetCurrentUserUsecase(this._repository);

  @override
  Future<Either<Failure, AuthUser>> call(NoParams params) async {
    return await _repository.getCurrentUser();
  }
}
