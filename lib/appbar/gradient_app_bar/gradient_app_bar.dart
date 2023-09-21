import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:persistent_bottom_nav/view/home.dart';
import 'package:persistent_bottom_nav/view/search.dart';

// flutter_gradient_app_bar 0.3.1
class TestAppbar extends StatefulWidget {
  const TestAppbar({Key? key}) : super(key: key);

  @override
  TestAppbarState createState() => TestAppbarState();
}

class TestAppbarState extends State<TestAppbar>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  int indexScreen = 0;
  List<Widget> screen = [
    const HomeView(),
    const SearchView(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: GradientAppBar(
          centerTitle: true,
          title: const Text('Title'),
          gradient: const LinearGradient(
            colors: [
              Colors.red,
              Colors.purple,
            ],
          ),
          bottom: TabBar(
            onTap: (value) {
              setState(() {
                indexScreen = value;
                print(value);
              });
            },
            tabs: myTabs,
          ),
        ),
        body: [
          const Center(
            child: Text('1'),
          ),
          const Center(
            child: Text('2'),
          ),
        ][indexScreen],
      ),
    );
  }
}
