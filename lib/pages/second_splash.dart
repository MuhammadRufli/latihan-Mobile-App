import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSplash extends StatelessWidget {
  const SecondSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/latar.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 75,
            left: 60,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 51,
              ),
              SizedBox(
                width: 18,
              ),
              Text(
                'UIS UNGGUL',
                style: GoogleFonts.k2d(
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
