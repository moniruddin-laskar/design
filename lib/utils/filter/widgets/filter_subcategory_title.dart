import 'dart:developer';

import 'package:design/constant/colors.dart';
import 'package:design/utils/stateManager/globalState.dart';
import 'package:design/utils/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubFilterTiels extends StatefulWidget {
  Map<String, dynamic>? subCategoryList = {};
  SubFilterTiels({super.key, this.subCategoryList});

  @override
  State<SubFilterTiels> createState() => _SubFilterTielsState();
}

class _SubFilterTielsState extends State<SubFilterTiels> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isChecked = selectedSubCategories[widget.subCategoryList!["id"].toString()]??false;
    return InkWell(
      onTap: () {
        print(widget.subCategoryList!["id"]);
        selectedSubCategories[widget.subCategoryList!["id"].toString()]=!isChecked;
        log(selectedSubCategories.toString());
        setState(() {});
      },
      child: Container(
        height: fullHeight(context) * 0.05,
        width: fullWidth(context) * 0.50,
        decoration: BoxDecoration(
            color: white,
            border: Border(bottom: BorderSide(color: greyLight, width: 1))),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textRegular(
                color: isChecked ? blue : black,
                maxLine: 1,
                size: 14,
                text: widget.subCategoryList!["subcategoriName"].toString(),
              ),
              isChecked ? Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: blue,
                    size: 25.0,
                  ),
                ),
              ) : HSpace(1),
            ],
          ),
        ),
      ),
    );
  }
}
