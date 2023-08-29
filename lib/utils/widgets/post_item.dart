import 'package:design/constant/colors.dart';
import 'package:design/models/post_model.dart';
import 'package:design/utils/widgets/common_widgets.dart';
import 'package:design/utils/widgets/large_text_manage.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PostItem extends StatefulWidget {
  PostModel itemModel;
  int index;
  PostItem({super.key, required this.itemModel, required this.index});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: Card(
        color: white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage(
                                widget.itemModel.profileImage.toString()),
                            fit: BoxFit.fill)),
                  ),
                  HSpace(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      textBold(
                          color: black,
                          maxLine: 1,
                          size: 15,
                          text: widget.itemModel.userName.toString()),
                      textRegular(
                          color: black,
                          maxLine: 1,
                          size: 14,
                          text: AppFonts.dateAndTimeFormatChanged(
                              DateTime.now().toString()))
                    ],
                  )
                ],
              ),
              VSpace(10),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textBold(
                        color: black,
                        maxLine: 1,
                        size: 14,
                        text: widget.itemModel.postTitle.toString()),
                    VSpace(2),
                    LargeTextHandle(
                      text: widget.itemModel.postDescrption.toString(),
                    ),
                  ]),
              VSpace(10),
              Container(
                height: fullHeight(context) * 0.25,
                width: fullWidth(context),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            widget.itemModel.postFileImage.toString()),
                        fit: BoxFit.fill)),
              ),
              VSpace(15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: grey,
                        size: 25.0,
                      ),
                      HSpace(5),
                      textRegular(
                          color: grey,
                          maxLine: 1,
                          size: 15,
                          text: widget.itemModel.postLikes.toString())
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.message,
                        color: grey,
                        size: 25.0,
                      ),
                      HSpace(5),
                      textRegular(
                          color: grey,
                          maxLine: 1,
                          size: 14,
                          text: widget.itemModel.postComments.toString())
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
