import 'package:flutter/material.dart';

class AuthTextFieldWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool obscureText;
  final TextEditingController controller;
  final VoidCallback? onToggle;
  final bool isPassword;
  final String? Function(String?)? validator;

  const AuthTextFieldWidget(
      {super.key,
      required this.label,
      required this.icon,
      required this.controller,
      required this.validator,
      this.onToggle,
      this.obscureText = false,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: color));
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.blue.shade900,
        ),
        SizedBox(width: 10),
        Expanded(
          child: TextFormField(
            cursorColor: Colors.blue.shade800,
            validator: validator,
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              suffixIcon: isPassword
                  ? IconButton(
                      onPressed: onToggle,
                      icon: Icon(obscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                      color: Colors.blue.shade800,
                    )
                  : null,
              labelText: label,
              errorStyle: TextStyle(color: Colors.red),
              floatingLabelStyle: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.blue.shade900),
              labelStyle: TextStyle(
                  color: const Color.fromARGB(122, 13, 72, 161),
                  fontWeight: FontWeight.bold),
              enabledBorder: outlineInputBorder(Colors.grey.shade300),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue.shade900)),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(12)),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(12)),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
          ),
        ),
      ],
    );
  }
}
