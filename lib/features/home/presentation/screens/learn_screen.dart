import 'package:e_learning/core/utils/utilities.dart';
import 'package:e_learning/features/home/presentation/screens/level_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/const.dart';
import '../../../../core/utils/custom_text_style.dart';
import '../widgets/circle_widget.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({Key? key}) : super(key: key);

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
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(Icons.close_sharp),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: const Text(
                  "What you will learn?",
                  style: CustomTextTheme.headline2,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                width: width,
                height: height * 0.6,
                child: Stack(
                  children: [
                    Positioned.fill(
                      bottom: height * 0.43,
                      left: width * 0.68,
                      right: width * 0.02,
                      top: height * 0.05,
                      child: CircleWidget(
                        width: width,
                        height: height,
                        text: 'UI/UX Design',
                        function: () {},
                      ),
                    ),
                    Positioned.fill(
                      bottom: height * 0.38,
                      right: width * 0.68,
                      left: width * 0.02,
                      top: height * 0.1,
                      child: CircleWidget(
                        width: width,
                        height: height,
                        text: 'Programing',
                        function: () {},
                      ),
                    ),
                    Positioned.fill(
                      bottom: height * 0.48,
                      left: width * 0.32,
                      right: width * 0.38,
                      top: height * 0.0,
                      child: CircleWidget(
                        width: width,
                        height: height,
                        text: 'Marketing',
                        function: () {},
                      ),
                    ),
                    Positioned.fill(
                      bottom: height * 0.28,
                      left: width * 0.37,
                      right: width * 0.33,
                      top: height * 0.2,
                      child: CircleWidget(
                        width: width,
                        height: height,
                        text: 'UI/UX Design',
                        check: true,
                        function: () {},
                      ),
                    ),
                    Positioned.fill(
                      bottom: height * 0.18,
                      right: width * 0.64,
                      left: width * 0.06,
                      top: height * 0.3,
                      child: CircleWidget(
                        width: width,
                        height: height,
                        text: 'Development',
                        function: () {},
                      ),
                    ),
                    Positioned.fill(
                      bottom: height * 0.23,
                      left: width * 0.68,
                      right: width * 0.02,
                      top: height * 0.25,
                      child: CircleWidget(
                        width: width,
                        height: height,
                        text: 'Graphics',
                        function: () {},
                      ),
                    ),
                    Positioned.fill(
                      bottom: height * 0.09,
                      right: width * 0.22,
                      left: width * 0.48,
                      top: height * 0.39,
                      child: CircleWidget(
                        width: width,
                        height: height,
                        text: 'Graphics',
                        function: () {},
                      ),
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
                      width: width * 0.4,
                      height: height * 0.4,
                      text: 'Continue',
                      function: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LevelScreen(),
                            ));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
