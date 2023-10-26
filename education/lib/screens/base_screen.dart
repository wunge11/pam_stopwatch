import 'package:education_app/constants/color.dart';
import 'package:education_app/constants/icons.dart';
import 'package:education_app/constants/size.dart';
import 'package:education_app/screens/featuerd_screen.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              icHome,
              height: kBottomNavigationBarItemSize,
            ),
            icon: Icon(
              Icons.home_outlined,
              size : kBottomNavigationBarItemSize,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              icHelp,
              height: kBottomNavigationBarItemSize,
            ),
            icon: Icon(
              Icons.help_outline,
              size : kBottomNavigationBarItemSize,
            ),
            label: "Menu Bantuan",
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              icSetting,
              height: kBottomNavigationBarItemSize,
            ),
            icon: Icon(
              Icons.logout_outlined,
              size : kBottomNavigationBarItemSize,
            ),
            label: "Logout",
          ),

        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
