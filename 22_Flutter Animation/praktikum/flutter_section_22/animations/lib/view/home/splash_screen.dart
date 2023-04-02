import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreenn extends StatefulWidget {
  const SplashScreenn({Key? key}) : super(key: key);

  @override
  State<SplashScreenn> createState() => _SplashScreennState();
}

class _SplashScreennState extends State<SplashScreenn> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushNamedAndRemoveUntil(
              context,
              '/home-page',
              (Route<dynamic> route) => false,
            )
        // Navigator.pushReplacementNamed(context, '/home-page'),
        );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/alta_icon.png'),
            ),
          ),
        ),
      ),
    );
  }
}
