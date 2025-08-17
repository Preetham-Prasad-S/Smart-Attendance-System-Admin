import 'package:flutter/material.dart';

class AuthButtonWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;
  final bool isLoading;
  const AuthButtonWidget(
      {super.key,
      required this.buttonText,
      this.onPressed,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(200, 55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.blue.shade900,
      ),
      child: isLoading
          ? CircularProgressIndicator(
              color: Colors.blue.shade800,
              backgroundColor: Colors.blue.shade200,
            )
          : Text(
              buttonText,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
    );
  }
}
