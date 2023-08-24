import 'package:e_learning/core/utils/const.dart';
import 'package:e_learning/core/utils/custom_text_style.dart';
import 'package:e_learning/core/utils/utilities.dart';
import 'package:e_learning/widgets/custom_ink_well.dart';
import 'package:e_learning/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

TextEditingController userController = TextEditingController();
TextEditingController passwordController = TextEditingController();
final formKey = GlobalKey<FormState>();

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = Utilities.screenWidth(context);
    double height = Utilities.screenHeight(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        body: SizedBox(
          width: width,
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: height * 0.06),
                    width: 0.52 * width,
                    child: Text('Welcome back! Sign in to continue!',
                        style: CustomTextTheme.headline3
                            .copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  CustomInkWell(
                    text: 'Log in with Google',
                    onTap: () {},
                    imgPath: 'assets/icons/google.png',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  CustomInkWell(
                    text: 'Log in with Google',
                    onTap: () {},
                    imgPath: 'assets/icons/facebook.png',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: const [
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Colors.black26,
                          thickness: 1,
                        ),
                      )),
                      Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Text('OR'),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Colors.black26,
                          thickness: 1,
                        ),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  CustomTextForm(
                    placeHolder: 'User Name',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'User Name is required';
                      } else if (value.length < 6) {
                        return 'User Name must be at least 6 characters';
                      }
                      return null;
                    },
                    textEditingController: userController,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CustomTextForm(
                    placeHolder: 'Email Address',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'User Name is required';
                      } else if (value.length < 6) {
                        return 'User Name must be at least 6 characters';
                      } else if (!isValidEmail(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    textEditingController: userController,
                  ),
                  SizedBox(
                    height: height * 0.07,
                  ),
                  CustomInkWell(
                    text: 'Log in',
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const LearnScreen(),
                        //   ),
                        // );
                      }
                    },
                    color: kSecondaryColor,
                    textStyle:
                        CustomTextTheme.headline3.copyWith(color: kWhiteColor),
                  ),
                  SizedBox(
                    height: height * 0.011,
                  ),
                  CustomInkWell(
                    text: 'Forgot password',
                    onTap: () {

                    },
                    color: kWhiteColor,
                    textStyle:
                    CustomTextTheme.headline3.copyWith(color: kSecondaryColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

bool isValidEmail(String email) {
  // Basic email validation using a regular expression
  return RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(email);
}
