import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DepartmentTab extends StatelessWidget {
  const DepartmentTab({super.key, required this.department});
  final String department;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color.fromARGB(255, 252, 171, 164),
      child: Text(
        department,
        style: GoogleFonts.quicksand(
            color: Color.fromARGB(255, 61, 34, 34),
            fontSize: 18,
            fontWeight: FontWeight.w600),
      ),
      onPressed: () {},
    );
  }
}
