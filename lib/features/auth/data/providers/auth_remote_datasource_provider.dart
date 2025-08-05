import 'package:institute_attendance_system/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:institute_attendance_system/features/auth/data/datasources/auth_remote_datasource_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final authRemoteDatasourceProvider = Provider<AuthRemoteDatasource>((ref) {
  final client = Supabase.instance.client;
  return AuthRemoteDatasourceImpl(client);
});
