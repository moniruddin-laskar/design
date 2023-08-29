import 'package:design/constant/colors.dart';
import 'package:design/utils/stateManager/globalState.dart';
import 'package:design/utils/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FilterTitle extends StatefulWidget {
  Map<String, dynamic>? categoryList = {};
  Function? refreshList;
  FilterTitle({super.key, this.categoryList,  this.refreshList});

  @override
  State<FilterTitle> createState() => _FilterTitleState();
}

class _FilterTitleState extends State<FilterTitle> {
  @override
  void initState() {
    super.initState();
   
  }

  @override
  Widget build(BuildContext context) {
    bool isChecked = selectedCategory==widget.categoryList!["id"].toString();
    return InkWell(
      onTap: () {
        print(widget.categoryList!["id"]);
        selectedCategory = "";
        selectedCategory = widget.categoryList!["id"].toString();
        if(widget.refreshList!=null){
        widget.refreshList!();
        }
        setState(() {});
      },
      child: Container(
        height: fullHeight(context) * 0.05,
        width: fullWidth(context) * 0.50,
        decoration: BoxDecoration(
            color: isChecked ? white : greyLight ,
            border: Border(bottom: BorderSide(color: white, width: 1))),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              textSemiBold(
                color: isChecked ? blue : black,
                maxLine: 1,
                size: 14,
                text: widget.categoryList!["categoryName"].toString(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
