import 'package:design/constant/colors.dart';
import 'package:design/screens/conectivity.dart';
import 'package:design/screens/home_screen.dart';
import 'package:design/screens/message.dart';
import 'package:design/screens/profile.dart';
import 'package:design/utils/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

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

  bool keyboardOpen = false;

  @override
  void initState() {
    super.initState();
    var keyboardVisibilityController = KeyboardVisibilityController();

    keyboardVisibilityController.onChange.listen((bool visible) {
      setState(() => keyboardOpen = visible);
    });
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
          floatingActionButton: keyboardOpen
              ? SizedBox()
              : FloatingActionButton(
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
          bottomNavigationBar: Container(
            height: fullHeight(context) * 0.09,
            color: appBarColor,
            width: fullWidth(context),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.00),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 44,
                        onPressed: () {
                          setState(() {
                            currentIndex = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              color: currentIndex == 0 ? blue : grey,
                            ),
                            textSemiBold(
                                color: currentIndex == 0 ? blue : grey,
                                maxLine: 1,
                                size: currentIndex == 0 ? 12 : 10,
                                text: "Home")
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 44,
                        onPressed: () {
                          setState(() {
                            currentIndex = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.people,
                              color: currentIndex == 1 ? blue : grey,
                            ),
                            textSemiBold(
                                color: currentIndex == 1 ? blue : grey,
                                maxLine: 1,
                                size: currentIndex == 1 ? 12 : 10,
                                text: "Connectivity")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 44,
                        onPressed: () {
                          setState(() {
                            currentIndex = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chat_bubble,
                              color: currentIndex == 2 ? blue : grey,
                            ),
                            textSemiBold(
                                color: currentIndex == 2 ? blue : grey,
                                maxLine: 1,
                                size: currentIndex == 2 ? 12 : 10,
                                text: "Message")
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 44,
                        onPressed: () {
                          setState(() {
                            currentIndex = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: currentIndex == 3 ? blue : grey,
                            ),
                            textSemiBold(
                                color: currentIndex == 3 ? blue : grey,
                                maxLine: 1,
                                size: currentIndex == 3 ? 12 : 10,
                                text: "Profile")
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
