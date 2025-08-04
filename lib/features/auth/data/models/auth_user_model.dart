import '../../domain/entities/auth_user.dart';

class AuthUserModel {
  final String id;
  final String email;

  AuthUserModel({required this.id, required this.email});

  factory AuthUserModel.fromMap(Map<String, dynamic> map) {
    return AuthUserModel(id: map['id'] ?? '', email: map['email'] ?? '');
  }

  AuthUser toEntity() => AuthUser(id: id, email: email);
}
