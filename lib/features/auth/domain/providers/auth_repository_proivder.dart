import 'package:institute_attendance_system/features/auth/data/providers/auth_remote_datasource_provider.dart';
import 'package:institute_attendance_system/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:institute_attendance_system/features/auth/domain/repositories/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final datasource = ref.watch(authRemoteDatasourceProvider);
  return AuthRepositoryImpl(datasource);
});
