import 'package:flutter/material.dart';

import '../../../../core/utils/const.dart';
import '../../../../core/utils/custom_text_style.dart';
import '../../../../core/utils/utilities.dart';

class BootomNavBarWidget extends StatelessWidget {
  const BootomNavBarWidget({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    double width = Utilities.screenWidth(context);
    double height = Utilities.screenHeight(context);

    return Center(
      child: Container(
        width: width * 0.95,
        height: height * 0.1,
        decoration: BoxDecoration(
            color: kSecondaryColor, borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.home_outlined,
                      size: width * 0.09, color: kWhiteColor),
                ),
                const SizedBox(
                  width: 3,
                ),
                index == 0
                    ? Text("Home",
                        style: CustomTextTheme.bodyText2
                            .copyWith(color: kWhiteColor))
                    : const SizedBox(),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.video_collection_outlined,
                      size: width * 0.09, color: kWhiteColor),
                ),
                const SizedBox(
                  width: 3,
                ),
                index == 1
                    ? Text("Courses",
                        style: CustomTextTheme.bodyText2
                            .copyWith(color: kWhiteColor))
                    : const SizedBox(),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.message_outlined,
                      size: width * 0.09, color: kWhiteColor),
                ),
                const SizedBox(
                  width: 3,
                ),
                index == 2
                    ? Text("message",
                        style: CustomTextTheme.bodyText2
                            .copyWith(color: kWhiteColor))
                    : const SizedBox(),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.account_circle_outlined,
                      size: width * 0.09, color: kWhiteColor),
                ),
                const SizedBox(
                  width: 3,
                ),
                index == 3
                    ? Text("account",
                        style: CustomTextTheme.bodyText2
                            .copyWith(color: kWhiteColor))
                    : const SizedBox()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
