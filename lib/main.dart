import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav/animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomAnimatedBottomNavigationBar(),
    );
  }
}
