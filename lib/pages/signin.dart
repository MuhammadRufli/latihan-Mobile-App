import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, //
      body: SafeArea(
        //
        child: Stack(
          children: [
            //
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/latar.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //
            SingleChildScrollView(
              //
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 110,
                  left: 60,
                  right: 60,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Logo di tengah
                    Center(
                      child: Image.asset(
                        'assets/logo.png',
                        width: 200,
                        height: 150,
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    const Text(
                      '',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 35,
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    // TextFormField
                    TextFormField(
                      style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      decoration: InputDecoration(
                        fillColor: const Color.fromARGB(75, 3, 3, 3),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        hintText: 'Email',
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 7, 7, 7),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // TextFormField
                    TextFormField(
                      style: const TextStyle(
                        color: Color(0xffFFFFFF),
                      ),
                      decoration: InputDecoration(
                        fillColor: const Color.fromARGB(76, 0, 0, 0),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 3, 3, 3),
                        ),
                        suffixIcon: const Icon(
                          Icons.visibility,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Teks "Forgot My Password"
                    Container(
                      alignment: const Alignment(1, 0.5),
                      child: const Text(
                        'Forgot My Password',
                        style: TextStyle(
                          color: Color.fromARGB(255, 2, 2, 2),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    // Tombol "Sign In"
                    Container(
                      width: double.infinity,
                      height: 60,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(247, 253, 253, 253),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Color.fromARGB(255, 9, 9, 9),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 60,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Dont Have Account ?',
                            style: TextStyle(
                              color: Color.fromARGB(265, 235, 219, 219),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
