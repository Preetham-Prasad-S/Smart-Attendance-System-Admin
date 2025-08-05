import 'package:institute_attendance_system/features/auth/domain/entities/auth_user.dart';
import 'package:institute_attendance_system/features/auth/domain/repositories/auth_repository.dart';

class GetCurrentUserUsecase {
  final AuthRepository _repository;

  GetCurrentUserUsecase(this._repository);

  Future<AuthUser?> call() {
    return _repository.getCurrentUser();
  }
}
