import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagramcloneapp/design/textfield/textfields/custom_textfield.dart';

class UsernameWidget extends StatefulWidget {
  final TextEditingController username;
  final FocusNode username_f;
  const UsernameWidget(
      {super.key, required this.username, required this.username_f});

  @override
  State<UsernameWidget> createState() => _UsernameWidgetState();
}

class _UsernameWidgetState extends State<UsernameWidget> {
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
          controller: widget.username,
          hint: 'Username',
          focusNode: widget.username_f,
          prefixIcon: const Icon(Icons.person),
        ),
      ),
    );
    ;
  }
}
