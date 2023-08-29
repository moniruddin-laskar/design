import 'package:design/constant/colors.dart';
import 'package:design/utils/dummy_data/post_list_data.dart';
import 'package:design/utils/widgets/common_widgets.dart';
import 'package:design/utils/widgets/connected_people_data.dart';
import 'package:flutter/material.dart';

class ConectivityScreen extends StatefulWidget {
  const ConectivityScreen({super.key});

  @override
  State<ConectivityScreen> createState() => _ConectivityScreenState();
}

class _ConectivityScreenState extends State<ConectivityScreen> {
  // final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            textBold(color: black, maxLine: 1, size: 20, text: "Conectivity"),
        elevation: 1,
        backgroundColor: white,
      ),
      backgroundColor: appCOlor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 18,
              top: 8,
              right: 18,
            ),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              // controller: _searchController,
              decoration: InputDecoration(
                filled: true,
                fillColor: greyLight,
                hintText: "Search...",
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Perform the search here
                  },
                ),
                enabledBorder: customOutlineBorder(),
                focusedBorder: customOutlineBorder(),
                errorBorder: customOutlineBorder(),
                focusedErrorBorder: customOutlineBorder(),
              ),
            ),
          ),
          VSpace(20),
          Padding(
            padding: const EdgeInsets.all(20.00),
            child: Row(
              children: [
                textBold(
                    color: black,
                    maxLine: 1,
                    size: 18,
                    text: "Connected People")
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: listConnectedPeople.length,
                itemBuilder: (context, index) {
                  return ConnectedPeopleData(
                    index: index,
                    itemModel: listConnectedPeople[index],
                  );
                }),
          ),
          VSpace(20),
        ],
      ),
    );
  }
}
