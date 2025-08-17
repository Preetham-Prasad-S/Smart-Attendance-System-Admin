import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:institute_attendance_system/feature/auth/domain/usecases/get_current_user_usecase.dart';
import '../../../auth/core/exceptions/failure.dart';
import '../../../auth/domain/entities/auth_user.dart';
import '../../../auth/domain/usecases/login_usecase.dart';
import '../../../auth/domain/usecases/logout_usecase.dart';
import '../../../auth/domain/usecases/sign_up_usecase.dart';
import '../../../auth/presentation/controllers/authstates/auth_state.dart';

class AuthController extends StateNotifier<AuthUserState> {
  final LoginUsecase _login;
  final SignUpUsecase _signup;
  final LogoutUsecase _logout;
  final GetCurrentUserUsecase _getCurrentUserUsecase;

  AuthController(
      this._login, this._logout, this._signup, this._getCurrentUserUsecase)
      : super(AuthUserState.initial());

  Future<void> signup(String email, String password) async {
    state = const AuthUserState.loading();

    final result = await _signup(SignUpParams(email, password));

    state = result.fold(
      (Failure failure) => AuthUserState.error(failure),
      (AuthUserEntity user) => AuthUserState.success(user),
    );
  }

  Future<void> login(String email, String password) async {
    state = const AuthUserState.loading();

    final result = await _login(LoginParams(email, password));

    state = result.fold(
      (Failure failure) => AuthUserState.error(failure),
      (AuthUserEntity user) => AuthUserState.success(user),
    );
  }
}
