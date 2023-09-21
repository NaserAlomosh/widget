import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav/select_box/widget_selectable_box/widget_selectable_box.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomSelectImage(),
    );
  }
}
