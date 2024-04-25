import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagramcloneapp/features/user/auth/auth_screen.dart';
import 'package:instagramcloneapp/widgets/navigation/navigation.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return NavigationScreen();
            } else {
              return AuthPage();
            }
          }),
    );
  }
}
