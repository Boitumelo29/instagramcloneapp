import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainAppBody extends StatefulWidget {
  final Column children;
  final IconData? leadingIcon;
  final IconData? favIcon;
  final IconData? lastIcon;
  const MainAppBody(
      {super.key,
      this.leadingIcon,
      this.favIcon,
      this.lastIcon,
      required this.children});

  @override
  State<MainAppBody> createState() => _MainAppBodyState();
}

class _MainAppBodyState extends State<MainAppBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: SizedBox(
            width: 105.w,
            height: 28.h,
            child: Image.asset('Assets/instagram.jpg'),
          ),
          leading: Icon(widget.leadingIcon),
          actions: [Icon(widget.favIcon), Icon(widget.lastIcon)],
          backgroundColor: Colors.white,
        ),
        body: Column(children: [widget.children]));
  }
}
