import 'package:e_learning/screens/sign_up_details_screen/sign_up_details_screen.dart';
import 'package:e_learning/utils/const.dart';
import 'package:e_learning/utils/custom_page_route.dart';
import 'package:e_learning/utils/custom_text_style.dart';
import 'package:e_learning/widgets/custom_ink_well.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              'Welcome!',
              style:
                  CustomTextTheme.headline3.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              'Sign Up to continue!',
              style:
                  CustomTextTheme.headline3.copyWith(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0,bottom: 20),
              child: CustomInkWell(onTap: () {}, text: 'Sign Up with Google',imgPath: 'assets/icons/google.png',),
            ),
            CustomInkWell(onTap: () {}, text: 'Sign Up with Facebook',imgPath: 'assets/icons/facebook.png',),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 28.0),
              child: Row(
                children: [
                  const Expanded(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(color: Colors.black26,thickness: 1,),
                  )),
                  const Padding(
                    padding: EdgeInsets.all(11.0),
                    child: Text('OR'),
                  ),
                  const Expanded(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(color: Colors.black26,thickness: 1,),
                  )),
                ],
              ),
            ),
            CustomInkWell(onTap: () {
              Navigator.push(context, CustomPageRoute(page: const SignUpDetailsScreen()));

            }, text: 'Sign Up with Email',),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 250,
                child: Text(
                  "By signing up you agree to our friendly Terms of Use and Privacy Policy",
                  style: CustomTextTheme.bodyText1.copyWith(color:kCaptionTextColor,fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 90,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 11.0),
                    child: Text(
                      "Already have an account?",
                      style: CustomTextTheme.headline4.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  CustomInkWell(onTap: () {
                  }, text: 'Sign In',),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

