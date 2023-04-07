import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_section_23/explorasi/assets/home_page.dart';
import 'package:flutter_section_23/task_management_lanjutan/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenn extends StatefulWidget {
  const SplashScreenn({Key? key}) : super(key: key);

  @override
  State<SplashScreenn> createState() => _SplashScreennState();
}

class _SplashScreennState extends State<SplashScreenn> {
  late SharedPreferences loginData;
  late bool newUser;

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    if (!mounted) return; // tambahkan pengecekan mounted
    loginData = await SharedPreferences.getInstance();
    newUser = loginData.getBool('login') ?? true;

    if (newUser == false) {
      Timer(
        const Duration(seconds: 3),
        () {
          if (!mounted) return; // tambahkan pengecekan mounted
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
              (route) => false);
        },
      );
    } else {
      Timer(
        const Duration(seconds: 3),
        () {
          if (!mounted) return; // tambahkan pengecekan mounted
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
              (route) => false);
        },
      );
    }
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
