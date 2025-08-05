import '../../domain/errors/auth_exception.dart';
import '../../domain/providers/get_current_user_usecase_provider.dart';
import '../../domain/providers/login_usecase_provider.dart';
import '../../domain/providers/logout_usecase_provider.dart';
import '../../domain/providers/signup_usecase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/auth_user.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<AuthUser?> build() async {
    final getCurrentUserUseCase = ref.read(getCurrentUserUseCaseProvider);
    return await getCurrentUserUseCase();
  }

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    final loginUseCase = ref.read(loginUseCaseProvider);

    try {
      final user = await loginUseCase(email, password);
      state = AsyncValue.data(user);
    } on AuthException catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    } catch (e, st) {
      state = AsyncValue.error(AuthException("Login Failed Unexpectedly"), st);
    }
  }

  Future<void> signUp(String email, String password) async {
    state = const AsyncValue.loading();
    final signUpUseCase = ref.read(signUpUseCaseProvider);

    try {
      final user = await signUpUseCase(email, password);
      state = AsyncValue.data(user);
    } on AuthException catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    } catch (e, st) {
      state = AsyncValue.error(AuthException("SignUp Failed Unexpectedly"), st);
    }
  }

  Future<void> logout() async {
    state = const AsyncValue.loading();
    final logoutUsecase = ref.read(logoutUseCaseProvider);

    try {
      await logoutUsecase();
    } catch (e, st) {
      state = AsyncValue.error(AuthException("Logout Failed Unexpectedly"), st);
    }
  }

  Future<void> getCurrentUser() async {
    state = const AsyncValue.loading();
    final getCurrentUserUsecase = ref.read(getCurrentUserUseCaseProvider);

    try {
      await getCurrentUserUsecase();
    } catch (e, st) {
      state = AsyncValue.error(AuthException("Failed To Get Current User"), st);
    }
  }
}
