import 'package:e_learning/utils/const.dart';
import 'package:e_learning/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
              bottom: MediaQuery.of(context).size.height *0.7,
              right: MediaQuery.of(context).size.width *0.5,
              child: Image.asset(
                'assets/icons/book.png',
              ),
          ),

          Positioned.fill(
            bottom: MediaQuery.of(context).size.height *0.3,
            left: MediaQuery.of(context).size.width * 0.5,
            child: Image.asset('assets/icons/A_Plus.png'),
          ),
          Positioned.fill(
            bottom: MediaQuery.of(context).size.height *0.09,
            right: MediaQuery.of(context).size.width * 0.7,
            child: Image.asset('assets/icons/Education.png'),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height *0.29,
            right: MediaQuery.of(context).size.width * 0.2,
            child: Image.asset('assets/icons/Science.png'),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height *0.69,
            left: MediaQuery.of(context).size.width * 0.7,
            child: Image.asset('assets/icons/Education.png'),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Education \n App',
              style: CustomTextTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
