import 'package:flutter/material.dart';

import '../colors.dart';
import '../styles.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, this.onTap});

  final String title;
  final VoidCallback? onTap;

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
            onPressed: onTap ??
                () {
                  Navigator.pop(context);
                },
            icon: Icon(
              Icons.arrow_back,
              color: black,
            )),
        title: Text(
          title,
          style: bodyText20w700(color: black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 24,
              child: Image.asset("assets/images/user1.png"),
            ),
          )
        ],
      ),
    );
  }
}
