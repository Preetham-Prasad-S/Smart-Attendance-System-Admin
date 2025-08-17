import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user.freezed.dart';

@freezed
abstract class AuthUserEntity with _$AuthUserEntity {
  const factory AuthUserEntity({
    required String id,
    required String? email,
  }) = _AuthUserEntity;
}
