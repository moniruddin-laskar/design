import 'package:design/constant/colors.dart';
import 'package:design/utils/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            textBold(color: black, maxLine: 1, size: 20, text: "Message"),
        elevation: 1,
        backgroundColor: white,
      ),
    );
  }
}
