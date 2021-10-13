import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:josnplacholder/screens/posts_screen/page/post_ui.dart';
import 'package:josnplacholder/screens/users_screen/page/user_ui.dart';

class MainTabs extends StatefulWidget {
  const MainTabs({
    Key? key,
  }) : super(key: key);

  @override
  _MainTabsState createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> {
  int _currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Builder(
            builder: (context) {
              switch (_currentIndex) {
                case 0:
                  return UserUi();
                case 1:
                  return PostUi();
                default:
                  return UserUi();
              }
            },
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index) => setState(() => _currentIndex = index),
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text('User List'),
              activeColor: Colors.red,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text('Posts List'),
              activeColor: Colors.purpleAccent,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
