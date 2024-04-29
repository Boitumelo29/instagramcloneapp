import 'package:flutter/material.dart';
import 'package:instagramcloneapp/features/explore/page/explore_screen.dart';
import 'package:instagramcloneapp/features/home/page/home_screen.dart';
import 'package:instagramcloneapp/features/post/page/post_screen.dart';
import 'package:instagramcloneapp/features/reel/page/reel_screen.dart';
import 'package:instagramcloneapp/features/user_profile/page/user_profile_screen.dart';
import 'package:instagramcloneapp/widgets/add_screen/add_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

int _currentIndex = 0;

class _NavigationScreenState extends State<NavigationScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            onTap: navigationTapped,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.camera,
                  ),
                  label: "Post"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.camera_alt_outlined,
                  ),
                  label: "Reels"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: "Profile")
            ]),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: const [
          HomeScreen(),
          ExploreScreen(),
          PostScreenNavigation(),
          ReelScreen(),
          ProfileScreen()
        ],
      ),
    );
  }

  onPageChanged(int page) {
    setState(() {
      _currentIndex = page;
    });
  }

  navigationTapped(int page) {
    pageController.jumpToPage(page);
  }
}
