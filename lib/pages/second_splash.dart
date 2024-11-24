import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uis/pages/first_splash.dart';

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
                style: GoogleFonts.jomolhari(
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstSplash()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
              child: const Text(
                'Kembali',
                style: TextStyle(
                  color: Color(0xff047857),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
