import 'package:design/constant/colors.dart';
import 'package:design/utils/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: textBold(color: black, maxLine: 1, size: 20, text: "Profile"),
        elevation: 1,
        backgroundColor: white,
      ),
    );
  }
}
