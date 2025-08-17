import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:institute_attendance_system/feature/auth/core/exceptions/failure.dart';
import 'package:institute_attendance_system/feature/auth/domain/entities/auth_user.dart';
import 'package:institute_attendance_system/feature/auth/presentation/controllers/auth_controller.dart';
import 'package:institute_attendance_system/feature/auth/presentation/controllers/authstates/auth_state.dart';
import '../../../auth/core/usecases/usecase.dart';
import '../../../auth/data/datasources/auth_remote_datasource.dart';
import '../../../auth/data/datasources/auth_remote_datasource_impl.dart';
import '../../../auth/data/repository/auth_repository_impl.dart';
import '../../../auth/domain/repository/auth_repository.dart';
import '../../../auth/domain/usecases/get_current_user_usecase.dart';
import '../../../auth/domain/usecases/login_usecase.dart';
import '../../../auth/domain/usecases/logout_usecase.dart';
import '../../../auth/domain/usecases/sign_up_usecase.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

final supabaseClientProvider = Provider<supabase.SupabaseClient>(
  (ref) => supabase.Supabase.instance.client,
);

final authRemoteDatasourceProvider = Provider<AuthRemoteDatasource>(
  (ref) => AuthRemoteDatasourceImpl(ref.read(supabaseClientProvider)),
);

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepositoryImpl(ref.read(authRemoteDatasourceProvider)),
);

final loginUsecaseProvider = Provider<LoginUsecase>(
    (ref) => LoginUsecase(ref.read(authRepositoryProvider)));

class Authuser {}

final signupUsecaseProvider = Provider<SignUpUsecase>(
  (ref) => SignUpUsecase(ref.read(authRepositoryProvider)),
);

final logoutUsecaseProvider = Provider<LogoutUsecase>(
    (ref) => LogoutUsecase(ref.read(authRepositoryProvider)));

final getCurrentUserUsecaseProvider = Provider<Usecase>(
  (ref) => GetCurrentUserUsecase(ref.read(authRepositoryProvider)),
);

final authControllerProvider =
    StateNotifierProvider<AuthController, AuthUserState>((ref) {
  final login = ref.watch(loginUsecaseProvider);
  final signup = ref.watch(signupUsecaseProvider);
  final logout = ref.watch(logoutUsecaseProvider);

  return AuthController(login, logout, signup);
});
