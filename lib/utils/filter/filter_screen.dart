import 'package:design/constant/colors.dart';
import 'package:design/utils/dummy_data/post_list_data.dart';
import 'package:design/utils/filter/widgets/filter_subcategory_title.dart';
import 'package:design/utils/filter/widgets/filter_title.dart';
import 'package:design/utils/stateManager/globalState.dart';
import 'package:design/utils/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  void initState() {
    selectedSubCategories = {};
    selectedCategory = "1";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 2,
        backgroundColor: white,
        title: textBold(color: black, maxLine: 1, size: 18, text: "Filter"),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_left_sharp,
            color: black,
            size: 40.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedSubCategories = {};
                  selectedCategory = "1";
                });
              },
              child: textSemiBold(
                  color: blue, maxLine: 1, size: 16, text: "Clear All"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: fullHeight(context) * 0.05,
                width: fullWidth(context) * 0.42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: white,
                    border: Border.all(color: blue, width: 2.0)),
                child: Center(
                  child: textSemiBold(
                      color: blue, maxLine: 1, size: 18, text: "Cancle"),
                ),
              ),
            ),
            Container(
              height: fullHeight(context) * 0.05,
              width: fullWidth(context) * 0.42,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: blue,
                  border: Border.all(color: blue, width: 2.0)),
              child: Center(
                child: textSemiBold(
                    color: white, maxLine: 1, size: 18, text: "Apply"),
              ),
            ),
          ],
        ),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: fullHeight(context),
            width: fullWidth(context) * 0.50,
            color: greyLight,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return FilterTitle(
                            categoryList: categories[index],
                            refreshList: () {
                              setState(() {});
                            });
                      }),
                ),
              ],
            ),
          ),
          IndexedStack(index: int.parse(selectedCategory) - 1, children: [
            subFilterCategoryPanel(subCategoryLIst),
            subFilterCategoryPanel(subCategoryTwo),
            subFilterCategoryPanel(subCategoryThree),
          ]),
        ],
      ),
    );
  }

  Widget subFilterCategoryPanel(List subCatList) {
    return Container(
      height: fullHeight(context),
      width: fullWidth(context) * 0.50,
      color: white,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: subCatList.length,
                itemBuilder: (context, index) {
                  return SubFilterTiels(subCategoryList: subCatList[index]);
                }),
          )
        ],
      ),
    );
  }
}
