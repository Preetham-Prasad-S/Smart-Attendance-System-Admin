import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          hintStyle: GoogleFonts.quicksand(fontSize: 14),
          contentPadding: EdgeInsets.all(10),
          filled: true,
          fillColor: const Color.fromARGB(172, 205, 219, 228),
          constraints: BoxConstraints(maxHeight: height),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
