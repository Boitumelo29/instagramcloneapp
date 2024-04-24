import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagramcloneapp/design/textfield/textfields/custom_textfield.dart';

class PasswordConfirmWidget extends StatefulWidget {
  final TextEditingController confirm;
  final FocusNode confirm_f;
  const PasswordConfirmWidget(
      {super.key, required this.confirm, required this.confirm_f});

  @override
  State<PasswordConfirmWidget> createState() => _PasswordConfirmWidgetState();
}

class _PasswordConfirmWidgetState extends State<PasswordConfirmWidget> {
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
          controller: widget.confirm,
          hint: 'Confirm Password',
          focusNode: widget.confirm_f,
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: const Icon(Icons.remove_red_eye),
        ),
      ),
    );
  }
}
