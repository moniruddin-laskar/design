import 'package:design/constant/colors.dart';
import 'package:design/models/connected_people.dart';
import 'package:design/utils/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ConnectedPeopleData extends StatefulWidget {
  ConnectedPeopleModel itemModel;
  int index;
  ConnectedPeopleData(
      {super.key, required this.itemModel, required this.index});

  @override
  State<ConnectedPeopleData> createState() => _ConnectedPeopleDataState();
}

class _ConnectedPeopleDataState extends State<ConnectedPeopleData> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage(widget.itemModel.profileImage),
                    fit: BoxFit.fill)),
          ),
          HSpace(15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              textBold(
                color: black,
                maxLine: 1,
                size: 15,
                text: widget.itemModel.userName.toString(),
              ),
              textRegular(
                  color: grey,
                  maxLine: 1,
                  size: 13,
                  text: widget.itemModel.peopleTitle)
            ],
          )
        ],
      ),
    );
  }
}
