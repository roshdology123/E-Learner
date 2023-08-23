import 'package:e_learning/core/utils/const.dart';
import 'package:e_learning/core/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.placeHolder,
    required this.validator,
    required this.textEditingController,
  });
  final String placeHolder;
  final String? Function(String?)? validator;

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      alignment: Alignment.center,
      child: Column(
        children: [
          TextFormField(
            validator: validator,
            controller: textEditingController,
            decoration: InputDecoration(
              filled: true,
              fillColor: kWhiteColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                borderSide: BorderSide.none,
              ),
              hintText: placeHolder,
              hintStyle:
              CustomTextTheme.bodyText2.copyWith(fontWeight: FontWeight.bold),
              contentPadding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
            ),
          ),
        ],
      ),
    );
  }
}
