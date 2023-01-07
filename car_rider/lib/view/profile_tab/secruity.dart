import 'package:car_rider/res/widgets/custom_appbar.dart';
import 'package:car_rider/res/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../../res/styles.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool isSwitch1 = true;
  bool isSwitch2 = true;
  bool isSwitch3 = true;

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
                  'Remember me',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch1,
                    onChanged: (val) {
                      isSwitch1 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Face ID',
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
                  'Biometric ID',
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: CustomButton(
                title: "Change PIN",
                onPressed: () {},
              ),
            ),
            Container(  margin: EdgeInsets.symmetric(vertical: 10),
              child: CustomButton(
                title: "Change Password",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
