import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                final width = constraints.maxWidth > 1200
                    ? constraints.maxWidth / 
                    : constraints.maxWidth / 1.2;
                final height = constraints.maxHeight;

                return SizedBox(
                  width: width * 0.6,
                  height: height * 0.6,
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
                                    fontWeight: FontWeight.w900,
                                    fontSize: width * 0.03),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                "Mark you new entry into the community of JIT",
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: height * 0.02),
                              TextFormField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color.fromARGB(
                                        172, 205, 219, 228),
                                    constraints: BoxConstraints(
                                        maxHeight: height * 0.045),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                              SizedBox(height: height * 0.025),
                              TextFormField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color.fromARGB(
                                        172, 205, 219, 228),
                                    constraints: BoxConstraints(
                                        maxHeight: height * 0.045),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                              SizedBox(
                                height: height * 0.025,
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Text("Forgot Password")),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                    textStyle: GoogleFonts.quicksand(
                                        fontWeight: FontWeight.w600,
                                        fontSize: width * 0.03),
                                    foregroundColor: Colors.white,
                                    minimumSize: Size(double.infinity, 50),
                                    backgroundColor: Colors.black),
                                onPressed: () {},
                                child: Text("Get Started"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Or do you have an account sign up"),
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
                                        elevation: 0,
                                        foregroundColor: Colors.black,
                                        backgroundColor: Colors.white,
                                      ),
                                      onPressed: () {},
                                      child: Icon(
                                        Ionicons.logo_google,
                                        size: 20,
                                      )),
                                  ElevatedButton(
                                      style: IconButton.styleFrom(
                                        fixedSize: Size(120, 50),
                                        elevation: 0,
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
                                        elevation: 0,
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
