import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav/select_box/multiple_bs_flutter_selectbox/multiple_bs_flutter_selectbox.dart';

import '../select_box/bs_flutter_selectbox/bs_flutter_selectbox.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomBsflutterSelectBox(),
            CustomMultipleBsflutterSelectBox(),
          ],
        ),
      ),
    );
  }
}
