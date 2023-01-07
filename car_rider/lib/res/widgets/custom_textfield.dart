
import 'package:flutter/material.dart';

import '../colors.dart';
import '../dimensions.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key, required this.controller, required this.hinttext, this.icon})
      : super(key: key);

  final TextEditingController controller;
  final String hinttext;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(context) * 0.91,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: icon,
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.white),
            ),
            fillColor: black.withOpacity(0.1),
            filled: true,
            hintText: hinttext,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 20)),
      ),
    );
  }
}
