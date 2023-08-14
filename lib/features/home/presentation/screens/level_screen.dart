import 'package:e_learning/core/utils/utilities.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/const.dart';
import '../../../../core/utils/custom_text_style.dart';
import '../widgets/circle_widget.dart';
import '../widgets/man_widget.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Utilities.screenWidth(context);
    double height = Utilities.screenHeight(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(Icons.close_sharp),
                  onPressed: () {},
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: const Text(
                  "Choose your level",
                  style: CustomTextTheme.headline2,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                width: width,
                height: height * 0.55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 1,),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ManWidget(height: height, width: width, isSelected: false,),
                        ManWidget(height: height*1.15, width: width, isSelected: true,),
                        ManWidget(height: height*1.3, width: width, isSelected: false,),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                height: height * 0.18,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Skip",
                        style: CustomTextTheme.bodyText2,
                      ),
                    ),
                    CircleWidget(
                      width: width *0.4,
                      height: height *0.4 ,
                      text: 'Continue',
                      function: () {},
                    )
                  ],
                ),
              ),
              SizedBox(height: height*0.01,)
            ],
          ),
        ),
      ),
    );
  }
}


