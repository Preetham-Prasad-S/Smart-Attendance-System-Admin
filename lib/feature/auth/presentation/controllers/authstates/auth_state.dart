import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:institute_attendance_system/feature/auth/core/exceptions/failure.dart';
import 'package:institute_attendance_system/feature/auth/domain/entities/auth_user.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthUserState with _$AuthUserState {
  const factory AuthUserState.initial() = _Initial;
  const factory AuthUserState.loading() = _Loading;
  const factory AuthUserState.success(AuthUserEntity user) = _Success;
  const factory AuthUserState.error(Failure failure) = _Error;
}
