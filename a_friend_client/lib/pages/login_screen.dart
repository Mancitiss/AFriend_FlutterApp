import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          LoginPage(),
        ]),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500,
          height: 700,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFF9CC9A0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 92,
                top: 350,
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD6B6B6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0xD13E5A41),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 92,
                top: 235,
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD6B6B6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0xD83F5A41),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 92,
                top: 188,
                child: SizedBox(
                  width: 108,
                  height: 27,
                  child: Text(
                    'User Name\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 92,
                top: 311,
                child: SizedBox(
                  width: 108,
                  height: 27,
                  child: Text(
                    'Password\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 404,
                top: 361,
                child: Container(
                  width: 35,
                  height: 29,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF735F5F),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              const Positioned(
                left: 121,
                top: 69,
                child: SizedBox(
                  width: 318,
                  height: 61,
                  child: Text(
                    'LOG IN ACCOUNT',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 196,
                top: 504,
                child: Container(
                  width: 107,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF99A9FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x9E242E68),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF191616),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.56,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 187,
                top: 435,
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    // textDecoration: TextDecoration.underline,
                    letterSpacing: 0.24,
                  ),
                ),
              ),
              const Positioned(
                left: 206,
                top: 579,
                child: Text(
                  'Sign up here!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    // textDecoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}