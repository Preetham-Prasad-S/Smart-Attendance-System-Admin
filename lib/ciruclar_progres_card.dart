import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CiruclarProgresCard extends StatelessWidget {
  final String cardText;
  final String percentageText;
  final double percentage;
  const CiruclarProgresCard(
      {super.key,
      required this.cardText,
      required this.percentage,
      required this.percentageText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.45,
      child: Card(
        elevation: 5,
        color: const Color.fromARGB(255, 252, 171, 164),
        child: Column(
          children: [
            SizedBox(height: 15),
            Text(
              cardText,
              style: GoogleFonts.quicksand(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 61, 34, 34)),
            ),
            SizedBox(height: 30),
            Center(
                child: CircularPercentIndicator(
              center: Text(
                percentageText,
                style: GoogleFonts.quicksand(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
              animateFromLastPercent: true,
              radius: 60,
              lineWidth: 10,
              backgroundColor: Color.fromARGB(255, 194, 133, 127),
              progressColor: Color.fromARGB(255, 124, 66, 66),
              circularStrokeCap: CircularStrokeCap.round,
              percent: percentage,
            )),
          ],
        ),
      ),
    );
  }
}
