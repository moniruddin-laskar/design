import 'package:design/constant/colors.dart';
import 'package:design/utils/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class LargeTextHandle extends StatefulWidget {
  final String text;

  LargeTextHandle({super.key, required this.text});

  @override
  _LargeTextHandleState createState() => _LargeTextHandleState();
}

class _LargeTextHandleState extends State<LargeTextHandle> {
  late String firstHalf;
  late String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState(); 

    if (widget.text.length > 100) {
      firstHalf = widget.text.substring(0, 100);
      secondHalf = widget.text.substring(100, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return secondHalf.isEmpty
        ? Row(
            children: [
              Expanded(
                child: textRegular(
                    color: black, maxLine: 10, size: 14, text: firstHalf),
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              flag
                  ? Row(
                      children: [
                        Expanded(
                          child: textRegular(
                              color: black,
                              maxLine: 10,
                              size: 14,
                              text: firstHalf + "..."),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(
                          child: textRegular(
                              color: black,
                              maxLine: 10,
                              size: 14,
                              text: firstHalf + secondHalf),
                        ),
                      ],
                    ),
              InkWell(
                child: flag
                    ? textSemiBold(
                        color: blue, maxLine: 1, size: 13, text: "See more")
                    : textSemiBold(
                        color: blue, maxLine: 1, size: 13, text: "See less"),
                onTap: () {
                  setState(() {
                    flag = !flag;
                  });
                },
              ),
            ],
          );
  }
}
