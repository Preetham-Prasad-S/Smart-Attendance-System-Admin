import 'package:institute_attendance_system/features/auth/domain/providers/auth_repository_proivder.dart';
import 'package:institute_attendance_system/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final signUpUseCaseProvider = Provider<SignUpUsecase>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return SignUpUsecase(repository);
});
