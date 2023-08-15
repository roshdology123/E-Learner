
import 'package:e_learning/core/utils/const.dart';
import 'package:flutter/material.dart';

import '../core/utils/custom_text_style.dart';

class CustomInkWell extends StatelessWidget {
  const CustomInkWell({
    super.key,
    required this.text,
    this.imgPath = '',
    required this.onTap,
    this.color = kWhiteColor,
    this.textStyle = CustomTextTheme.headline4,
  });
  final String text;
  final String imgPath;
  final VoidCallback onTap;
  final Color color;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: color,
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            imgPath != '' ? Image.asset(imgPath): const SizedBox(),
            Text(
              text,
              style: textStyle,
            ),
            const SizedBox()
          ],
        ),
      ),
    );
  }
}
