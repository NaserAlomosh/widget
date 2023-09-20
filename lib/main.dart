import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav/persistent_tab_view/persistent_tab_view_style10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomPersistentBottomNavBarStyle10(),
    );
  }
}
