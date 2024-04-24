import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final FocusNode? focusNode;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final TextEditingController controller;
  final bool obscureText;
  final VoidCallback onChanged;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.hint,
    required this.onChanged,
    this.focusNode,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => widget.onChanged,
      style: TextStyle(fontSize: 18.sp, color: Colors.black),
      controller: widget.controller,
      focusNode: widget.focusNode,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(color: Colors.grey, width: 2.w)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(color: Colors.black, width: 2.w)),
          hintText: widget.hint,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon),
    );
  }
}
