import 'package:flutter/material.dart';

import '../../../../core/utils/const.dart';
import '../../../../core/utils/custom_text_style.dart';

class CircleWidget extends StatelessWidget {
  CircleWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.text,
      this.check = false,required this.function });

  final double width;
  final double height;
  final String text;
  bool check;
  VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        GestureDetector(
          onTap: function,
          child: CircleAvatar(
            radius: height * 0.15,
            backgroundColor: Colors.blue,
            child: Text(
              text,
              style: CustomTextTheme.bodyText2,
            ),
          ),
        ),
        check
            ? CircleAvatar(
                radius: height * 0.018,
                backgroundColor: kOrangeColor,
                child: const Icon(Icons.check),
              )
            : const SizedBox()
      ],
    );
  }
}
