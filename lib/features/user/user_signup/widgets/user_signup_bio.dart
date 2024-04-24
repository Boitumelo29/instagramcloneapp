import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagramcloneapp/design/textfield/textfields/custom_textfield.dart';

class BioWidget extends StatefulWidget {
  final TextEditingController bio;
  final FocusNode bio_f;
  const BioWidget({super.key, required this.bio, required this.bio_f});

  @override
  State<BioWidget> createState() => _BioWidgetState();
}

class _BioWidgetState extends State<BioWidget> {
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
          controller: widget.bio,
          hint: 'Bio',
          focusNode: widget.bio_f,
          prefixIcon: const Icon(Icons.text_decrease),
        ),
      ),
    );
    ;
  }
}
