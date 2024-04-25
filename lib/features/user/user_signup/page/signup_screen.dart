import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagramcloneapp/design/textfield/button/custom_button.dart';
import 'package:instagramcloneapp/features/user/user_login/widget/user_login_email.dart';
import 'package:instagramcloneapp/features/user/user_login/widget/user_login_password.dart';
import 'package:instagramcloneapp/features/user/user_signup/widgets/user_signup_bio.dart';
import 'package:instagramcloneapp/features/user/user_signup/widgets/user_signup_loginwidget.dart';
import 'package:instagramcloneapp/features/user/user_signup/widgets/user_signup_password_confrim.dart';
import 'package:instagramcloneapp/features/user/user_signup/widgets/user_signup_username.dart';

class SignUpScreen extends StatefulWidget {
  final VoidCallback show;
  const SignUpScreen({super.key, required this.show});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final email = TextEditingController();
  FocusNode email_f = FocusNode();
  final username = TextEditingController();
  FocusNode username_f = FocusNode();
  final bio = TextEditingController();
  FocusNode bio_f = FocusNode();
  final password = TextEditingController();
  FocusNode password_f = FocusNode();
  final passwordConfirm = TextEditingController();
  FocusNode passwordConfirm_f = FocusNode();

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
                height: 10.h,
              ),
              Center(
                child: Stack(alignment: Alignment.center, children: [
                  Icon(
                    Icons.circle,
                    size: 70.h,
                    color: Color.fromARGB(255, 231, 224, 224),
                  ),
                  Icon(
                    Icons.person,
                    size: 40.h,
                    color: Colors.black,
                  ),
                ]),
              ),
              SizedBox(
                height: 50.h,
              ),
              EmailWidget(
                email: email,
                email_f: email_f,
              ),
              SizedBox(
                height: 15.h,
              ),
              UsernameWidget(username: username, username_f: username_f),
              SizedBox(
                height: 15.h,
              ),
              BioWidget(bio: bio, bio_f: bio_f),
              SizedBox(
                height: 10.h,
              ),
              PasswordWidget(
                password: password,
                password_f: password_f,
              ),
              SizedBox(
                height: 10.h,
              ),
              PasswordConfirmWidget(
                  confirm: passwordConfirm, confirm_f: passwordConfirm_f),
              SizedBox(
                height: 10.h,
              ),
              CustomButton(
                onTapped: () {},
                title: "SignUp",
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
                height: 44.h,
              ),
              LoginWidget(
                show: widget.show,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
