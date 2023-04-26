import 'package:flutter/material.dart';
class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({Key? key,required this.controller,required this.labelText, required this.hintText, required this.validator}) : super(key: key);

final TextEditingController controller;
final String labelText;
final String hintText;
final  String? Function(String? value) validator;


  @override
  Widget build(BuildContext context) {
    return    TextFormField(
      controller: controller,
      decoration:  InputDecoration(
        labelText: labelText,
        hintText: hintText,
      ),
    validator:validator,
    );

  }
}

