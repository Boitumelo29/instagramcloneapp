import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagramcloneapp/design/textfield/textfields/custom_textfield.dart';

class EmailWidget extends StatefulWidget {
  final TextEditingController email;
  final FocusNode email_f;
  const EmailWidget({super.key, required this.email, required this.email_f});

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
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
          obscureText: false,
          controller: widget.email,
          hint: 'Email',
          focusNode: widget.email_f,
          prefixIcon: const Icon(Icons.email),
        ),
      ),
    );
    ;
  }
}
