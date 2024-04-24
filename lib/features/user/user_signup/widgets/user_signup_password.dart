import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagramcloneapp/design/textfield/textfields/custom_textfield.dart';

class PasswordWidget extends StatefulWidget {
  final TextEditingController password;
  final FocusNode password_f;
  const PasswordWidget(
      {super.key, required this.password, required this.password_f});

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: CustomTextField(
          onChanged: () {},
          obscureText: true,
          controller: widget.password,
          hint: 'Password',
          focusNode: widget.password_f,
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: const Icon(Icons.remove_red_eye),
        ),
      ),
    );
  }
}
