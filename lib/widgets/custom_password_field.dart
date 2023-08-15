import 'package:e_learning/core/utils/const.dart';
import 'package:e_learning/core/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField(
      {super.key,
        required this.validator,
        required this.placeHolder,
        required this.textEditingController});
  final String? Function(String?)? validator;
  final String placeHolder;
  final TextEditingController textEditingController;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,

      alignment: Alignment.center,
      child: TextFormField(
        obscureText: _obscureText,
        validator: widget.validator,
        textAlignVertical: TextAlignVertical.center,
        controller: widget.textEditingController,
        decoration: InputDecoration(
          filled: true,
          fillColor: kWhiteColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
            borderSide: BorderSide.none,
          ),
          hintText: widget.placeHolder,
          hintStyle:
          CustomTextTheme.bodyText2.copyWith(fontWeight: FontWeight.bold),
          contentPadding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
          suffixIcon: InkWell(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
            ),
          ),
        ),
      ),
    );
  }
}

