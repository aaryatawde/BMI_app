import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app/pages/bmi_page.dart';
import 'package:bmi_app/pages/history_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _tabs = [
    BMIPage(),
    HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Colors.blue,
        middle: Text('BMI'),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          inactiveColor: Colors.black54,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: "History",
            ),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return _tabs[index];
            },
          );
        },
      ),
    );
  }
}
