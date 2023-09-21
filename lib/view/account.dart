import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav/select_box/multiple_select_box/multiple_select_box.dart';

import '../select_box/widget_selectable_box/widget_selectable_box.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Center(
        child: CustomMultipleSelectBox(),
      )),
    );
  }
}
