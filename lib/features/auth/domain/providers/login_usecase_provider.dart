import 'package:institute_attendance_system/features/auth/domain/providers/auth_repository_proivder.dart';
import 'package:institute_attendance_system/features/auth/domain/usecases/login_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final loginUseCaseProvider = Provider<LoginUseCase>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return LoginUseCase(repository);
});
