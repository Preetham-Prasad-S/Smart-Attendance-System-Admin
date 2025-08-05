import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/auth_user.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<AuthUser?> build() => null;
}
