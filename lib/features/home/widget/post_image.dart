import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostImage extends StatelessWidget {
  const PostImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 375.h,
      child: Image.asset("Assets/image.jpg", fit: BoxFit.cover),
    );
  }
}
