import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginWidget extends StatefulWidget {
  final VoidCallback show;
  const LoginWidget({super.key, required this.show});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already have an account?"),
        SizedBox(
          width: 10.h,
        ),
        GestureDetector(
          onTap: widget.show,
          child: const Text(
            "Login",
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
