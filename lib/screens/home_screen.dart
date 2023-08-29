import 'package:design/constant/app_images.dart';
import 'package:design/constant/colors.dart';
import 'package:design/utils/dummy_data/post_list_data.dart';
import 'package:design/utils/filter/filter_screen.dart';
import 'package:design/utils/widgets/post_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 2,
        backgroundColor: white,
        leading: Padding(
          padding: const EdgeInsets.only(
              bottom: 5.0, right: 5.0, top: 5.0, left: 20.0),
          child: SizedBox(
              height: 25, width: 25, child: Image.asset(AppImages.appLogo)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FilterScreen()),
                );
              },
              child: Icon(
                Icons.search,
                color: black,
                size: 30.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: SizedBox(
                height: 25, width: 25, child: Image.asset(AppImages.okButton)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(AppImages.sendButton)),
          ),
        ],
      ),
      backgroundColor: appCOlor,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: listDataItem.length,
                itemBuilder: (context, index) {
                  return PostItem(
                    index: index,
                    itemModel: listDataItem[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
