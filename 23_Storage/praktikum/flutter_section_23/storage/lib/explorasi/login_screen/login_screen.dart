import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_section_23/explorasi/assets/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  late SharedPreferences loginData;
  late bool newUser;

  /// Fungsi yang pertama kali dipanggil sebelum widget treenya dibangun.
  // @override
  // void initState() {
  //   super.initState();
  //   checkLogin();
  // }

  // void checkLogin() async {
  //   loginData = await SharedPreferences.getInstance();
  //   newUser = loginData.getBool('login') ?? true;

  //   if (newUser == false) {
  //     Navigator.pushAndRemoveUntil(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => const HalamanDua(),
  //         ),
  //         (route) => false);
  //   }
  // }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Satu'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.account_circle_rounded),
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value != null && value.length < 4) {
                    return 'Enter at least 4 characters';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.account_circle_rounded),
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (email) {
                  if (email != null && !EmailValidator.validate(email)) {
                    return 'Enter a valid email';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.account_circle_rounded),
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value != null && value.length < 5) {
                    return 'Enter at least 5 characters';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () {
                  final isValidForm = formKey.currentState!.validate();

                  String username = _nameController.text;
                  if (isValidForm) {
                    loginData.setBool('login', false);
                    loginData.setString('username', username);

                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                        (route) => false);
                  }
                },
                child: const Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
