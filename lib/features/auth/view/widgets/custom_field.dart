import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscuretext;
  const CustomField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscuretext = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (val) {
        if (val!.trim().isEmpty) {
          return "$hintText is missing!";
        }
        return null;
      },
      obscureText: isObscuretext,
    );
  }
}
