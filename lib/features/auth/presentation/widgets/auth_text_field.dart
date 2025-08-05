import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String label;
  final String initialValue;
  final bool obscureText;
  final void Function(String) onChanged;
  final String? Function(String?)? validator;
  final Widget? suffuxIcon;
  const AuthTextField({
    super.key,
    required this.label,
    required this.initialValue,
    required this.onChanged,
    this.suffuxIcon,
    this.validator,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: suffuxIcon,
        border: const OutlineInputBorder(),
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
