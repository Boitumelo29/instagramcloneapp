import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagramcloneapp/design/textfield/button/custom_button.dart';
import 'package:instagramcloneapp/features/user/user_login/widget/user_login_email.dart';
import 'package:instagramcloneapp/features/user/user_login/widget/user_login_forgot_password.dart';
import 'package:instagramcloneapp/features/user/user_login/widget/user_login_password.dart';
import 'package:instagramcloneapp/features/user/user_login/widget/user_login_signupwidget.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback show;
  const LoginScreen({super.key, required this.show});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  FocusNode email_f = FocusNode();
  final password = TextEditingController();
  FocusNode password_f = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 96.w,
                height: 100.h,
              ),
              Center(
                child: Image.asset('Assets/instagram.jpg'),
              ),
              SizedBox(
                height: 120.h,
              ),
              EmailWidget(email: email, email_f: email_f),
              SizedBox(
                height: 15.h,
              ),
              PasswordWidget(password: password, password_f: password_f),
              SizedBox(
                height: 10.h,
              ),
              const ForgotPassword(),
              SizedBox(
                height: 10.h,
              ),
              const CustomButton(
                title: "Login",
                color: Colors.blue,
              ),
              SizedBox(
                height: 10.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    color: Colors.blue,
                    thickness: 2,
                  ),
                  Text("or"),
                  Divider(
                    color: Colors.blue,
                    thickness: 2,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  ),
                  Text(
                    "Facebook",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              SizedBox(
                height: 160.h,
              ),
              SignUpWidget(
                show: widget.show,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
