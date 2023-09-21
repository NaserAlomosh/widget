import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav/appbar/gradient_app_bar/gradient_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TestAppbar(),
    );
  }
}
