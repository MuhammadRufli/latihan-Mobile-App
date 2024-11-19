import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSplash extends StatelessWidget {
  const FirstSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff107F08),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 220,
          left: 117,
          right: 117,
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/logo.png',
                width: 140,
              ),
            ),
            SizedBox(
              height: 169,
            ),
            Text(
              'UNIVERSITAS IBNU SINA BATAM',
              style: GoogleFonts.jomolhari(
                color: Color(0xff000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
