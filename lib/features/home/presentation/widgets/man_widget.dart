import 'package:flutter/material.dart';

import '../../../../core/utils/const.dart';
import '../../../../core/utils/custom_text_style.dart';

class ManWidget extends StatelessWidget {
  const ManWidget({
    super.key,
    required this.height,
    required this.width, required this.isSelected,
  });

  final double height;
  final double width;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Beginner",
          style: CustomTextTheme.bodyText2,
        ),
        SizedBox(height: height*0.01,),
        Container(
          width: width * 0.25,
          height: height * 0.07,
          decoration:  BoxDecoration(
              color:isSelected? kSecondaryColor:kWhiteColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35))),
          child:  Column(
            children: [
              SizedBox(height: height*0.01,),
              const Text("10 - 16" ,style: CustomTextTheme.bodyText2,),
              const Text("Age" ,style: CustomTextTheme.bodyText2,),
            ],
          ),),
        Container(
          width: width * 0.25,
          height: height * 0.3,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35)),color: kCaptionTextColor,
              image:DecorationImage(image: AssetImage(AppImages.kManImage)) ),
        )
      ],
    );
  }
}