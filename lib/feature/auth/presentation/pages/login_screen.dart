import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:institute_attendance_system/feature/auth/presentation/pages/sign_up_screen.dart';
import 'package:institute_attendance_system/feature/home/presentation/pages/home_screen.dart';
import '../../../auth/presentation/widgets/auth_button_widget.dart';
import '../../../auth/presentation/controllers/authstates/auth_state.dart';
import '../../../auth/presentation/providers/providers.dart';
import '../../../auth/presentation/widgets/auth_header_widget.dart';
import '../../../auth/presentation/widgets/auth_text_field_widget.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<FormState> formKey = GlobalKey();

    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final authState = ref.watch(authControllerProvider);
    final authController = ref.read(authControllerProvider.notifier);

    final passwordVisibility = useState(true);

    ref.listen<AuthUserState>(
      authControllerProvider,
      (_, next) {
        next.maybeWhen(
          success: (user) =>
              Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => HomeScreen(),
          )),
          error: (failure) => ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(failure.message))),
          orElse: () {},
        );
      },
    );

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const AuthHeaderWidget(), // stays on top
                        Expanded(
                          child: Center(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width <
                                        700
                                    ? MediaQuery.of(context).size.width * 0.9
                                    : 600,
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                elevation: 5,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        "Welcome Back To SASJIT",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 30),

                                      // Email Text Input
                                      AuthTextFieldWidget(
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return "Please Fill the Email ID";
                                            } else if (!value.isEmpty &&
                                                !value.contains("@")) {
                                              return "Please enter valid Email ID";
                                            }
                                            return null;
                                          },
                                          icon: Icons.person_rounded,
                                          label: "Email",
                                          controller: emailController),
                                      const SizedBox(height: 30),

                                      //Password Text Input
                                      AuthTextFieldWidget(
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return "Please Fill the Password";
                                            } else if (!value.isEmpty &&
                                                value.length < 6) {
                                              return "Password's length should be greater than 6";
                                            }
                                            return null;
                                          },
                                          isPassword: true,
                                          obscureText: passwordVisibility.value,
                                          onToggle: () =>
                                              passwordVisibility.value =
                                                  !passwordVisibility.value,
                                          icon: Icons.lock_outline_rounded,
                                          label: "Password",
                                          controller: passwordController),
                                      const SizedBox(height: 30),
                                      AuthButtonWidget(
                                        onPressed: () {
                                          if (formKey.currentState!
                                              .validate()) {
                                            authController.login(
                                                emailController.text.trim(),
                                                passwordController.text.trim());
                                          }
                                        },
                                        isLoading: authState.maybeWhen(
                                          loading: () => true,
                                          orElse: () => false,
                                        ),
                                        buttonText: "Login",
                                      ),
                                      SizedBox(height: 30),
                                      RichText(
                                          text: TextSpan(
                                              style: GoogleFonts.quicksand(
                                                  color: const Color.fromARGB(
                                                      255, 90, 136, 206),
                                                  fontWeight: FontWeight.w500),
                                              text: "Not a JITIAN ",
                                              children: [
                                            TextSpan(
                                                text: "Sign Up",
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () => Navigator
                                                          .pushReplacement(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        SignUpScreen(),
                                                              )),
                                                style: TextStyle(
                                                    color: Colors.blue.shade900,
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration
                                                        .underline))
                                          ]))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
