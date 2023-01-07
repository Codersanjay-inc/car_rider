import 'package:flutter/material.dart';

import '../colors.dart';
import '../dimensions.dart';
import '../styles.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height(context)*0.05,
        width: width(context) * 0.92,
        decoration: myFillBoxDecoration(0, primary, 50),
        child: Center(
          child: Text(
            title,
            style: bodyText16w600(color: white),
          ),
        ),
      ),
    );
  }
}
