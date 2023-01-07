import 'package:car_rider/res/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../../res/styles.dart';

class ManageNotification extends StatefulWidget {
  const ManageNotification({super.key});

  @override
  State<ManageNotification> createState() => _ManageNotificationState();
}

class _ManageNotificationState extends State<ManageNotification> {
  bool isSwitch1 = true;
  bool isSwitch2 = true;
  bool isSwitch3 = true;
  bool isSwitch4 = false;
  bool isSwitch5 = true;
  bool isSwitch6 = true;
  bool isSwitch7 = false;
  bool isSwitch8 = true;
  bool isSwitch9 = true;
  bool isSwitch10 = false;
  bool isSwitch11 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Notification Settings",
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'General Notification',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch2,
                    onChanged: (val) {
                      isSwitch2 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sound',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch3,
                    onChanged: (val) {
                      isSwitch3 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Vibrate',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch4,
                    onChanged: (val) {
                      isSwitch4 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Promo & Discount',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch5,
                    onChanged: (val) {
                      isSwitch5 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payments',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch6,
                    onChanged: (val) {
                      isSwitch6 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cashback',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch7,
                    onChanged: (val) {
                      isSwitch7 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'App Updates',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch8,
                    onChanged: (val) {
                      isSwitch8 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Service Available',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch9,
                    onChanged: (val) {
                      isSwitch9 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Tips Available',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch10,
                    onChanged: (val) {
                      isSwitch10 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Special Offers',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch11,
                    onChanged: (val) {
                      isSwitch11 = val;
                      setState(() {});
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
