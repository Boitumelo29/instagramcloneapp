import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpWidget extends StatefulWidget {
  final VoidCallback show;
  const SignUpWidget({super.key, required this.show});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't Have an account?"),
        SizedBox(
          width: 10.h,
        ),
        GestureDetector(
          onTap: widget.show,
          child: const Text(
            "SignUp",
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
