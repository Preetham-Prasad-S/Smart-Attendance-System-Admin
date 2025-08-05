import 'package:institute_attendance_system/features/auth/domain/providers/auth_repository_proivder.dart';
import 'package:institute_attendance_system/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final getCurrentUserUseCaseProvider = Provider<GetCurrentUserUsecase>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return GetCurrentUserUsecase(repository);
});
