import 'package:flutter/material.dart';
import 'package:institute_attendance_system/features/auth/presentation/widgets/auth_text_field.dart';

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
                    Text(
                      "Smart Attendance System (Admin)",
                      style: TextStyle(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 142, 194, 234)),
                    )
                  ],
                ),
              ),
              Divider(
                color: const Color.fromARGB(255, 48, 48, 48),
              ),
              Expanded(
                child: SizedBox(
                  child: Center(
                      child: SizedBox(
                    height: 400,
                    width: 600,
                    child: Card(
                      elevation: 5,
                      color: const Color.fromARGB(255, 31, 31, 31),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "Welcome Back",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 28),
                          ),
                          AuthTextField(
                            label: "Email",
                            initialValue: "Enter Email",
                            onChanged: (p0) {},
                          )
                        ],
                      ),
                    ),
                  )),
                ),
              )
            ],
          )),
    );
  }
}
