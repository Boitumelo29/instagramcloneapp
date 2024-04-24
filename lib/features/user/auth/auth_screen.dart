import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagramcloneapp/features/user/user_login/page/login_screen.dart';
import 'package:instagramcloneapp/features/user/user_signup/page/signup_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool a = true;
  void go() {
    setState(() {
      a = !a;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (a) {
      return LoginScreen(
        show: go,
      );
    } else {
      return SignUpScreen(show: go);
    }
  }
}
