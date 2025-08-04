import 'package:institute_attendance_system/features/auth/presentation/models/auth_form_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_form_controller.g.dart';

@riverpod
class AuthFormController extends _$AuthFormController {
  @override
  AuthFormState build() => const AuthFormState();
}
