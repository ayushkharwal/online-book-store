import 'package:flutter/material.dart';
import 'package:online_book_store/screens/bookmark_screen/bookmark_screen.dart';
import 'package:online_book_store/screens/cart_screen/cart_screen.dart';
import 'package:online_book_store/screens/home_screen/home_screen.dart';
import 'package:online_book_store/screens/profile_screen/profile_screen.dart';
import 'package:online_book_store/utils/constants.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  List<Widget> tabs = [];
  int currentTabIndex = 0;

  void _changeTab(int newIndex) {
    setState(() {
      currentTabIndex = newIndex;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabs = [
      HomeScreen(),
      BookmarkScreen(),
      CartScreen(),
      ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          IndexedStack(
            index: currentTabIndex,
            children: tabs,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomNavBar(),
          ),
        ],
      ),
    );
  }

  Padding bottomNavBar() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 30,
      ),
      child: Container(
        height: 60,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                _changeTab(0);
              },
              icon: const Icon(Icons.home_rounded),
              iconSize: 28,
              color: Colors.grey.shade200,
            ),
            IconButton(
              onPressed: () {
                _changeTab(1);
              },
              icon: const Icon(Icons.bookmark_rounded),
              iconSize: navBarIconSize,
              color: Colors.grey.shade200,
            ),
            IconButton(
              onPressed: () {
                _changeTab(2);
              },
              icon: const Icon(Icons.shopping_cart_rounded),
              iconSize: navBarIconSize,
              color: Colors.grey.shade200,
            ),
            IconButton(
              onPressed: () {
                _changeTab(3);
              },
              icon: const Icon(Icons.person_rounded),
              iconSize: navBarIconSize,
              color: Colors.grey.shade200,
            ),
          ],
        ),
      ),
    );
  }
}
