import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav/view/account.dart';
import 'package:persistent_bottom_nav/view/home.dart';
import 'package:persistent_bottom_nav/view/search.dart';
import 'package:persistent_bottom_nav/view/shopping_cart.dart';

class CustomAnimatedBottomNavigationBar extends StatefulWidget {
  const CustomAnimatedBottomNavigationBar({super.key});

  @override
  State<CustomAnimatedBottomNavigationBar> createState() =>
      CustomAnimatedBottomNavigationBarState();
}

class CustomAnimatedBottomNavigationBarState
    extends State<CustomAnimatedBottomNavigationBar> {
  int bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const [
          HomeView(),
          ShoppingCart(),
          SearchView(),
          AccountView(),
        ][bottomNavIndex], //destination screen
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          //params
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: const [
            Icons.home,
            Icons.favorite,
            Icons.search,
            Icons.person,
          ],
          inactiveColor: Colors.cyan,
          borderColor: Colors.orange,
          splashColor: Colors.red,
          activeColor: Colors.amber,
          activeIndex: bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => bottomNavIndex = index),
          //other params
        ),
      ),
    );
  }
}
