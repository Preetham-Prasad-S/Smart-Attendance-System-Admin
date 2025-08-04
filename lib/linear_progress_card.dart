import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearProgressCard extends StatelessWidget {
  const LinearProgressCard(
      {super.key,
      required this.year,
      required this.percentage,
      required this.percentText});
  final String year;
  final double percentage;
  final String percentText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.95,
      child: Card(
        color: Color.fromARGB(255, 252, 171, 164),
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                year,
                style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 61, 34, 34)),
              ),
            ),
            Expanded(
                child: LinearPercentIndicator(
              backgroundColor: Color.fromARGB(255, 194, 133, 127),
              progressColor: Color.fromARGB(255, 124, 66, 66),
              barRadius: Radius.circular(20),
              percent: percentage,
            )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                percentText,
                style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 61, 34, 34)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
