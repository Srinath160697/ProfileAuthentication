import 'package:flutter/material.dart';
import 'package:profile_app/language.dart';

class Mysplash extends StatefulWidget {
  const Mysplash({super.key});

  @override
  State<Mysplash> createState() => _MysplashState();
}

class _MysplashState extends State<Mysplash> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MylanguageScreen()),
      );
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xFFBDFCE5),
            Color(0xFFE8F5E9),
            Color.fromARGB(255, 247, 247, 247),
            Color(0xFFE8F5E9),
            Color(0xFFBDFCE5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 450,
              width: 450,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Chimertech_logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
