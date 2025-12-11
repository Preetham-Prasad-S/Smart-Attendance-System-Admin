import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:institute_attendance_system/feature/auth/presentation/widgets/auth_text_field_widget.dart';
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
                return SizedBox(
                  width: 450,
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        spacing: 15,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                          Text(
                            "Sign Up With Email",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 24),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "Mark you new entry into the community of JIT",
                            style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.w500),
                          ),
                          CustomTextField(
                            controller: emailController,
                            prefixIcon: Ionicons.person_outline,
                            height: 100,
                            hintText: "Enter Email",
                          ),
                          CustomTextField(
                            controller: passwordController,
                            prefixIcon: Ionicons.lock_closed_outline,
                            height: 100,
                            hintText: "Enter Password",
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Forgot Password",
                                  style: GoogleFonts.quicksand(
                                      decoration: TextDecoration.underline),
                                ),
                              )),
                          TextButton(
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                textStyle: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                                foregroundColor: Colors.white,
                                minimumSize: Size(double.infinity, 50),
                                backgroundColor: Colors.black),
                            onPressed: () {},
                            child: Text("Get Started"),
                          ),
                          GestureDetector(
                            onTap: () {},
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
                          Row(
                            spacing: 20,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  ),
                );
              }),
            ),
          ),
        ));
  }
}
