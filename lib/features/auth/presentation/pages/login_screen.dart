import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black87,
          body: Column(
            children: [
              SizedBox(height: 5),
              SizedBox(
                height: 25,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text("Smart Attendance System (Admin)",
                        style: GoogleFonts.quicksand(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 142, 194, 234)))
                  ],
                ),
              ),
              Divider(
                color: const Color.fromARGB(255, 48, 48, 48),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 600,
                      height: 400,
                      child: Card(
                        elevation: 10,
                        color: const Color.fromARGB(255, 49, 49, 49),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Text(
                              "Welcome Back",
                              style: GoogleFonts.quicksand(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 142, 194, 234)),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 450,
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Email",
                                      style: GoogleFonts.quicksand(
                                          color: Color.fromARGB(
                                              255, 142, 194, 234),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor:
                                          const Color.fromARGB(255, 58, 64, 70),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 0,
                                            color: Color.fromARGB(
                                                255, 58, 64, 70)),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 142, 194, 234)),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Password",
                                      style: GoogleFonts.quicksand(
                                          color: Color.fromARGB(
                                              255, 142, 194, 234),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor:
                                          const Color.fromARGB(255, 58, 64, 70),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 0,
                                            color: Color.fromARGB(
                                                255, 58, 64, 70)),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 142, 194, 234)),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                            ElevatedButton(
                              style: ButtonStyle(
                                  elevation: WidgetStatePropertyAll(0),
                                  backgroundColor: WidgetStatePropertyAll(
                                      const Color.fromARGB(255, 49, 49, 49)),
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 142, 194, 234)),
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  minimumSize:
                                      WidgetStatePropertyAll(Size(250, 50))),
                              onPressed: () {},
                              child: Text(
                                "Login",
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 142, 194, 234)),
                              ),
                            ),
                            SizedBox(height: 20),
                            RichText(
                              text: TextSpan(
                                  text: "Don't have an account ? ",
                                  style: GoogleFonts.quicksand(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  children: [
                                    TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          print("Hello");
                                        },
                                      text: "Sign Up",
                                      style: GoogleFonts.quicksand(
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 142, 194, 234)),
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
