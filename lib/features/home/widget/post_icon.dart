import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostIcons extends StatelessWidget {
  const PostIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 14.w,
        ),
        Icon(
          Icons.favorite_outline,
          size: 25.w,
        ),
        SizedBox(
          width: 17.w,
        ),
        const Icon(Icons.comment),
        SizedBox(
          width: 17.w,
        ),
        Icon(Icons.send),
        const Spacer(),
        Icon(Icons.save),
      ],
    );
  }
}
