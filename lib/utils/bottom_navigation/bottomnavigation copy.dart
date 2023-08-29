import 'package:design/constant/colors.dart';
import 'package:design/screens/conectivity.dart';
import 'package:design/screens/home_screen.dart';
import 'package:design/screens/message.dart';
import 'package:design/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List pages = [
    HomeScreen(),
    ConectivityScreen(),
    MessageScreen(),
    ProfileScreen()
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (currentIndex == 0) {
          SystemNavigator.pop();
          return false;
        } else {
          setState(() {
            currentIndex = 0;
          });
        }
        return false;
      },
      child: IndexedStack(children: [
        Scaffold(
          floatingActionButton: FloatingActionButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            elevation: 0,
            backgroundColor: red,
            onPressed: () async {
              setState(() {});
            },
            child: Center(
              child: Icon(
                Icons.add,
                size: 30,
                color: white,
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: pages[currentIndex],
          bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(backgroundColor: Colors.white),
            child: BottomNavigationBar(
              selectedFontSize: 14,
              unselectedFontSize: 10,
              onTap: onTap,
              currentIndex: currentIndex,
              showUnselectedLabels: true,
              selectedItemColor: blue,
              unselectedItemColor: grey,
              type: BottomNavigationBarType.fixed,
              backgroundColor: white,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: 'HOME'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.people),
                    label: 'Connectivity'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat_bubble),
                    label: 'Message'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile'),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
