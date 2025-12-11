import 'package:fpdart/fpdart.dart';
import 'package:institute_attendance_system/core/exceptions/failure.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

final class NoParams {}
