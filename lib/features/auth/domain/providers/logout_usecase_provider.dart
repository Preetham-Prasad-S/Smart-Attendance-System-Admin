import 'package:institute_attendance_system/features/auth/domain/providers/auth_repository_proivder.dart';
import 'package:institute_attendance_system/features/auth/domain/usecases/logout_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final logoutUseCaseProvider = Provider<LogoutUsecase>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return LogoutUsecase(repository);
});
