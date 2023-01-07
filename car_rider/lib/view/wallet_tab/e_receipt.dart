import 'package:car_rider/res/widgets/custom_appbar.dart';
import 'package:car_rider/res/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../../res/dimensions.dart';
import '../../res/styles.dart';

class EReceiptScreen extends StatefulWidget {
  const EReceiptScreen({Key? key}) : super(key: key);

  @override
  State<EReceiptScreen> createState() => _EReceiptScreenState();
}

class _EReceiptScreenState extends State<EReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "E-Reciept",),

      body: Container(
        margin: EdgeInsets.all(21),
        child:
        Column(
          children: [
            Container(
              decoration: myOutlineBoxDecoration(1, Colors.grey, 11),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  child: Image.asset("assets/images/user1.png"),
                ),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height(context) * 0.01,
                    ),
                    Text(
                      "Daniel Austin",
                      style: bodyText16w600(color: Colors.black),
                    ),
                    Text("+91-000000000",style: bodyText11Small(color: Colors.black)),
                    SizedBox(
                      height: height(context) * 0.02,
                    )
                  ],
                ),
                trailing: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Paid",style: bodyText14w600(color: primary),),
                      Text("4km",style: bodyText14w600(color: primary),),

                    ],
                  ),
                ),
              ),
            ),

            Container(
              height: height(context)*0.17,
              width: width(context),
              decoration: myOutlineBoxDecoration(1, Colors.grey, 11),
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Amount",style:bodyText14w600(color: Colors.black),),
                      Text("Rs.200",style:bodyText14w600(color: Colors.black),),
                    ],
                  ), Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Promo",style:bodyText14w600(color: primary),),
                      Text("-Rs 50",style:bodyText14w600(color: primary),),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total",style:bodyText14w600(color: Colors.black),),
                      Text("Rs.150",style:bodyText14w600(color: Colors.black),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: height(context)*0.17,
              width: width(context),
              decoration: myOutlineBoxDecoration(1, Colors.grey, 11),
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment Method",style:bodyText14w600(color: Colors.black),),
                      Text("E-Wallet",style:bodyText14w600(color: Colors.black),),
                    ],
                  ), Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Date",style:bodyText14w600(color: Colors.black),),
                      Text("Dec 20,2024 I 10:00:27 AM",style:bodyText14w600(color: Colors.black),),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Transaction ID",style:bodyText14w600(color: Colors.black),),
                      Text("SK7263727399",style:bodyText14w600(color: Colors.black),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: height(context)*0.1,),
            
            CustomButton(title: "Done", onPressed: (){})

          ],
        ),
      ),
    );
  }
}
