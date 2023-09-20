import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:persistent_bottom_nav/view/account.dart';
import 'package:persistent_bottom_nav/view/home.dart';
import 'package:persistent_bottom_nav/view/search.dart';
import 'package:persistent_bottom_nav/view/shopping_cart.dart';

class CustomGoogleNavBar extends StatefulWidget {
  const CustomGoogleNavBar({super.key});

  @override
  State<CustomGoogleNavBar> createState() => _CustomGoogleNavBarState();
}

class _CustomGoogleNavBarState extends State<CustomGoogleNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const [
          HomeView(),
          SearchView(),
          AccountView(),
          ShoppingCart(),
        ][selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.blue[300]!,
                hoverColor: Colors.red,
                gap: 8,
                activeColor: Colors.amber,
                iconSize: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.cyan,
                color: Colors.black,
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.favorite,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.verified_user,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
