import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:institute_attendance_system/feature/auth/dependency_injection.dart';
import 'package:institute_attendance_system/feature/auth/presentation/screens/sign_up_screen.dart';
import 'package:ionicons/ionicons.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenConsumerState();
}

class _LoginScreenConsumerState extends ConsumerState<LoginScreen> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);
    final authController = ref.read(authControllerProvider.notifier);

    return DecoratedBox(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              const Color.fromARGB(255, 168, 216, 255),
              Colors.white
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(0),
              elevation: 100,
              shadowColor: Colors.black45,
              child: LayoutBuilder(builder: (context, constraints) {
                final width = constraints.maxWidth;
                final height = constraints.maxHeight;

                return SizedBox(
                  width: 500,
                  height: 550,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color.fromARGB(255, 197, 233, 255),
                              const Color.fromARGB(255, 255, 255, 255)
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              SizedBox(height: height * 0.03),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                shadowColor:
                                    const Color.fromARGB(255, 187, 230, 251),
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Icon(Icons.login),
                                ),
                              ),
                              SizedBox(height: height * 0.015),
                              Text(
                                "Sign Up With Email",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 26),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                "Mark you new entry into the community of JIT",
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: height * 0.02),
                              CustomTextField(
                                controller: emailController,
                                prefixIcon: Ionicons.person_outline,
                                height: height,
                                hintText: "Enter Email",
                              ),
                              SizedBox(height: height * 0.025),
                              CustomTextField(
                                controller: passwordController,
                                prefixIcon: Ionicons.lock_closed_outline,
                                height: height,
                                hintText: "Enter Password",
                              ),
                              SizedBox(
                                height: height * 0.012,
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                    onTap: () => Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                      builder: (context) => SignUpScreen(),
                                    )),
                                    child: Text(
                                      "Forgot Password",
                                      style: GoogleFonts.quicksand(
                                          decoration: TextDecoration.underline),
                                    ),
                                  )),
                              SizedBox(
                                height: height * 0.012,
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    textStyle: GoogleFonts.quicksand(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                    foregroundColor: Colors.white,
                                    minimumSize: Size(double.infinity, 50),
                                    backgroundColor: Colors.black),
                                onPressed: () => authController.login(
                                    emailController.text.trim(),
                                    passwordController.text.trim()),
                                child: Text("Get Started"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () => Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                )),
                                child: RichText(
                                  text: TextSpan(
                                      style: GoogleFonts.quicksand(),
                                      text: "Or do you have an account ",
                                      children: [
                                        TextSpan(
                                            text: "Sign Up",
                                            style: GoogleFonts.quicksand(
                                                decoration:
                                                    TextDecoration.underline,
                                                fontWeight: FontWeight.w500))
                                      ]),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                spacing: 20,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                      style: IconButton.styleFrom(
                                        fixedSize: Size(120, 50),
                                        elevation: 10,
                                        shadowColor: Colors.black26,
                                        foregroundColor: Colors.black,
                                        backgroundColor: const Color.fromARGB(
                                            255, 255, 255, 255),
                                      ),
                                      onPressed: () {},
                                      child: Icon(
                                        Ionicons.logo_google,
                                        size: 20,
                                      )),
                                  ElevatedButton(
                                      style: IconButton.styleFrom(
                                        fixedSize: Size(120, 50),
                                        elevation: 10,
                                        shadowColor: Colors.black26,
                                        foregroundColor: Colors.black,
                                        backgroundColor: Colors.white,
                                      ),
                                      onPressed: () {},
                                      child: Icon(
                                        Ionicons.logo_apple,
                                        size: 20,
                                      )),
                                  ElevatedButton(
                                      style: IconButton.styleFrom(
                                        fixedSize: Size(120, 50),
                                        elevation: 10,
                                        shadowColor: Colors.black26,
                                        foregroundColor: Colors.black,
                                        backgroundColor: Colors.white,
                                      ),
                                      onPressed: () {},
                                      child: Icon(
                                        Ionicons.logo_github,
                                        size: 20,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ));
  }
}

class CustomTextField extends StatelessWidget {
  final IconData prefixIcon;
  final String hintText;
  final TextEditingController controller;
  const CustomTextField(
      {super.key,
      required this.height,
      required this.hintText,
      required this.prefixIcon,
      required this.controller});

  final double height;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value != null && !value.isEmpty) {
          return "";
        }
        return "Please $hintText";
      },
      cursorRadius: Radius.circular(50),
      cursorHeight: 18,
      decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            size: 18,
          ),
          hintText: hintText,
          contentPadding: EdgeInsets.all(10),
          filled: true,
          fillColor: const Color.fromARGB(172, 205, 219, 228),
          constraints: BoxConstraints(maxHeight: height * 0.045),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
