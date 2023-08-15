import 'package:e_learning/core/utils/const.dart';
import 'package:e_learning/core/utils/custom_text_style.dart';
import 'package:e_learning/core/utils/utilities.dart';
import 'package:e_learning/widgets/custom_ink_well.dart';
import 'package:e_learning/widgets/custom_password_field.dart';
import 'package:e_learning/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpDetailsScreen extends StatefulWidget {
  const SignUpDetailsScreen({super.key});

  @override
  State<SignUpDetailsScreen> createState() => _SignUpDetailsScreenState();
}
final formKey = GlobalKey<FormState>();
TextEditingController emailController = TextEditingController();
TextEditingController userController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController cPasswordController = TextEditingController();
class _SignUpDetailsScreenState extends State<SignUpDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = Utilities.screenWidth(context);
    double height = Utilities.screenHeight(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.05,top: height * 0.01),
                  child: Text("Enter your details",
                      style: CustomTextTheme.headline2
                          .copyWith(fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: height * 0.065,
                ),
                SizedBox(
                  width: width,
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: height * 0.03),
                          child: CustomTextForm(
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
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: height * 0.03),
                          child: CustomTextForm(
                            placeHolder: 'Email Address',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'User name is required';
                              } else if (!isValidEmail(value)) {
                                return 'Please Enter valid email address';
                              }
                              return null;
                            },
                            textEditingController: emailController,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: height * 0.03),
                          child: PasswordField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Password is required';
                                } else if (value.length < 8) {
                                  return 'Password must be at least 8 characters';
                                }
                                return null;
                              },
                              placeHolder: 'Password',
                              textEditingController:
                                  passwordController),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: height * 0.12),
                          child: PasswordField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Password is required';
                                } else if (value.length < 8) {
                                  return 'Password must be at least 8 characters';
                                } else if (value != passwordController.text) {
                                  return 'Password must be at least 8 characters';
                                }
                                return null;
                              },
                              placeHolder: 'Confirm Password',
                              textEditingController:
                                  cPasswordController),
                        ),
                        CustomInkWell(
                          text: 'Continue',
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              //TODO: Navigate to home screen
                            }
                          },
                          color: kSecondaryColor,
                          textStyle: CustomTextTheme.headline4
                              .copyWith(color: kWhiteColor),
                        )
                      ],
                    ),
                  ),
                ),
              ],
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
