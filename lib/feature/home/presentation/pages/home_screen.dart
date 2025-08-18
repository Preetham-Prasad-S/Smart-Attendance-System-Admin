import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  OutlineInputBorder _outlineInputBorder(Color color) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
            child: Column(
          children: [
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 12),
                    Text(
                      "SASJIT Dashboard",
                      style: GoogleFonts.quicksand(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 300,
                        height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: const Color.fromARGB(255, 229, 242, 251),
                            filled: true,
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.blue.shade900),
                            enabledBorder:
                                _outlineInputBorder(Colors.blue.shade100),
                            focusedBorder:
                                _outlineInputBorder(Colors.blue.shade900),
                          ),
                        )),
                    SizedBox(width: 24),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings_applications_sharp),
                      color: Colors.blue.shade900,
                      iconSize: 45,
                    ),
                    SizedBox(width: 24),
                    CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                    ),
                    SizedBox(width: 24)
                  ],
                )
              ],
            ),
            SizedBox(height: 5),
            Divider(
              color: const Color.fromARGB(224, 0, 71, 132),
            ),
          ],
        )));
  }
}
