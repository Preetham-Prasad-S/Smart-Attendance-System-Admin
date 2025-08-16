import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:institute_attendance_system/feature/auth/data/datasources/auth_remote_datasource_impl.dart';
import 'package:institute_attendance_system/feature/auth/data/repository/auth_repository_impl.dart';
import 'package:institute_attendance_system/feature/auth/domain/usecases/sign_up_usecase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text("Login"),
          TextField(
            controller: emailController,
          ),
          TextField(
            controller: passwordController,
          ),
          ElevatedButton(
              onPressed: () async {
                final output = await SignUpUsecase(AuthRepositoryImpl(
                    AuthRemoteDatasourceImpl(Supabase.instance.client)));
                print(output.toString());
              },
              child: Text("Sign Up"))
        ],
      )),
    );
  }
}
