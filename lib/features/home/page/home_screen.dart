import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagramcloneapp/design/main_body/main_body.dart';

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
      children: Column(
        children: [
          CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Column(children: [
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
                    Container(
                      width: 375.w,
                      height: 375.h,
                      child: Image.asset("Assets/image.jpg", fit: BoxFit.cover),
                    ),
                    Container(
                      width: 375.w,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 14.w,
                          ),
                          Row(
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
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, top: 13, bottom: 5),
                                child: Text(
                                  "0",
                                  style: TextStyle(fontSize: 13.sp),
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "username",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 10.w),
                                  const Text(
                                    "caption",
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ]);
                }, childCount: 1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
