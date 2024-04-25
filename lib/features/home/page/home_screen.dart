import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagramcloneapp/design/main_body/main_body.dart';
import 'package:instagramcloneapp/features/home/widget/post_details.dart';
import 'package:instagramcloneapp/features/home/widget/post_icon.dart';
import 'package:instagramcloneapp/features/home/widget/post_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MainAppBody(
      leadingIcon: Icons.camera,
      favIcon: Icons.favorite,
      lastIcon: Icons.send,
      children: Column(children: [
        Container(
          width: 375.w,
          height: 54.h,
          color: Colors.white,
          child: Center(
            child: ListTile(
              leading: ClipOval(
                child: SizedBox(
                  height: 35.h,
                  width: 35.w,
                  child: const Icon(Icons.person),
                ),
              ),
              title: Text(
                "username",
                style: TextStyle(fontSize: 13.sp),
              ),
              subtitle: Text(
                "location",
                style: TextStyle(fontSize: 11.sp),
              ),
              trailing: const Icon(Icons.more),
            ),
          ),
        ),
        PostImage(),
        Container(
          width: 375.w,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                width: 14.w,
              ),
              PostIcons(),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 13, bottom: 5),
                child: Text(
                  "0",
                  style: TextStyle(fontSize: 13.sp),
                ),
              ),
              const PostDetails()
            ],
          ),
        )
      ]),
    );
  }
}
