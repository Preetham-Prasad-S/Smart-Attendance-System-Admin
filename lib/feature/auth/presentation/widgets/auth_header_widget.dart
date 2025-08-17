import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeaderWidget extends StatelessWidget {
  const AuthHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                "Smart Attendance System (JIT)",
                style: GoogleFonts.quicksand(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Divider(
          color: const Color.fromARGB(224, 0, 71, 132),
        ),
      ],
    );
  }
}
