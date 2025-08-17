import 'package:fpdart/fpdart.dart';
import '../../../auth/core/exceptions/failure.dart';
import '../../../auth/core/usecases/usecase.dart';
import '../../../auth/domain/entities/auth_user.dart';
import '../../../auth/domain/repository/auth_repository.dart';

class GetCurrentUserUsecase
    implements Usecase<Either<Failure, AuthUserEntity>, NoParams> {
  final AuthRepository _repository;

  GetCurrentUserUsecase(this._repository);

  @override
  Future<Either<Failure, AuthUserEntity>> call(NoParams params) async {
    return await _repository.getCurrentUser();
  }
}
