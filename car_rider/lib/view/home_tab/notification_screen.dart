import 'package:car_rider/res/colors.dart';
import 'package:car_rider/res/dimensions.dart';
import 'package:car_rider/res/styles.dart';
import 'package:car_rider/res/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Notification",),
      body: Container(
        margin: EdgeInsets.all(11),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                height: height(context) * 0.1,
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: myOutlineBoxDecoration(1, Colors.grey, 11),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.all(7),
                      height: height(context) * 0.05,
                      width: width(context) * 0.1,
                      decoration: myFillBoxDecoration(1, primary, 51),
                      child: CircleAvatar(
                        radius: 11,
                        backgroundColor: primary,
                        child: Image.asset(
                          "assets/icons/icon_wallet1.png",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment Received!",
                          style: bodyText16w600(color: Colors.black),
                        ),
                        Text(
                          "you received a payment in your wallet",
                          style: bodyText14normal(color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
