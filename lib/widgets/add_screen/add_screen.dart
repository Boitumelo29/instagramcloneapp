import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagramcloneapp/features/post/page/post_screen.dart';
import 'package:instagramcloneapp/features/reel/page/reel_screen.dart';

class PostScreenNavigation extends StatefulWidget {
  const PostScreenNavigation({super.key});

  @override
  State<PostScreenNavigation> createState() => _PostScreenNavigationState();
}

class _PostScreenNavigationState extends State<PostScreenNavigation> {
  int _currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  onPageChanged(int page) {
    setState(() {
      _currentIndex = page;
    });
  }

  navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: onPageChanged,
              children: const [
                PostScreen(),
                ReelScreen(),
              ],
            ),
            AnimatedPositioned(
              duration: const Duration(microseconds: 100),
              bottom: 10.h,
              right: _currentIndex == 0 ? 100.w : 150.w,
              child: Container(
                width: 120.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        navigationTapped(0);
                      },
                      child: Text(
                        "Post",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: _currentIndex == 0
                                ? Colors.white
                                : Colors.grey),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        navigationTapped(1);
                      },
                      child: Text(
                        "Reels",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: _currentIndex == 1
                                ? Colors.white
                                : Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
