import 'package:flutter/material.dart';
import 'package:profile_app/language.dart';

class Mysplash extends StatefulWidget {
  const Mysplash({Key? key}) : super(key: key);

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
        margin: EdgeInsets.only(
          left: 25,
          right: 25,
        ),
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
