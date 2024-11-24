import 'package:flutter/material.dart';
import 'package:uis/pages/second_splash.dart';

class FirstSplash extends StatefulWidget {
  const FirstSplash({super.key});

  @override
  State<FirstSplash> createState() => _FirstSplashState();
}

class _FirstSplashState extends State<FirstSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SecondSplash()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff107F08),
      body: Stack(
        children: [
          Padding(
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
                    height: 150,
                  ),
                ),
                const SizedBox(
                  height: 169,
                ),
                const Text(
                  'UNIVERSITAS IBNU SINA BATAM',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
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
                    MaterialPageRoute(
                        builder: (context) => const SecondSplash()),
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
                  'Next',
                  style: TextStyle(
                    color: Color(0xff047857),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
