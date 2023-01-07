
import 'package:car_rider/view/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../../res/dimensions.dart';
import '../../res/styles.dart';
import '../../res/widgets/custom_appbar.dart';
import '../../res/widgets/custom_button.dart';
import '../../res/widgets/custom_textfield.dart';
import 'otp_verify_screen.dart';


class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  final TextEditingController loginController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(title: 'Login')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: height(context) * 0.35,
                // width: 270,
                child: Image.asset(
                  'assets/images/login.png',
                  // fit: BoxFit.fill,
                ),
              ),
            ),
            addVerticalSpace(20),
            CustomTextField(
                controller: loginController, hinttext: 'Enter Mobile Number'),
            addVerticalSpace(20),
            CustomButton(
                title: 'Login',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => OtpVerifyScreen()));
                }),
            addVerticalSpace(height(context) * 0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: black.withOpacity(0.2),
                  height: 1,
                  width: width(context) * 0.33,
                ),
                Text(
                  'or continue with',
                  style: bodyText12Small(color: black.withOpacity(0.5)),
                ),
                Container(
                  color: black.withOpacity(0.2),
                  height: 1,
                  width: width(context) * 0.33,
                ),
              ],
            ),
            addVerticalSpace(25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height(context) * 0.08,
                  width: width(context) * 0.17,
                  decoration: shadowDecoration(10, 2),
                  child: Center(
                    child: Image.asset('assets/images/fb.png'),
                  ),
                ),
                Container(
                  height: height(context) * 0.08,
                  width: width(context) * 0.17,
                  decoration: shadowDecoration(10, 2),
                  child: Center(
                    child: Image.asset('assets/images/google.png'),
                  ),
                ),
                Container(
                  height: height(context) * 0.08,
                  width: width(context) * 0.17,
                  decoration: shadowDecoration(10, 2),
                  child: Center(
                    child: Image.asset('assets/images/iphone.png'),
                  ),
                ),
              ],
            ),
            addVerticalSpace(height(context) * 0.08),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => SignUpScreen()));
              },
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Don’t have an account?',
                    style: bodyText14normal(color: black)),
                TextSpan(
                    text: '  Sign up', style: bodyText14w600(color: primary)),
              ])),
            )
          ],
        ),
      ),
    );
  }
}
