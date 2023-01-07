import 'package:car_rider/res/colors.dart';
import 'package:car_rider/res/dimensions.dart';
import 'package:car_rider/res/styles.dart';
import 'package:car_rider/res/widgets/custom_appbar.dart';
import 'package:car_rider/view/wallet_tab/e_receipt.dart';
import 'package:car_rider/view/wallet_tab/wallet_screen.dart';
import 'package:flutter/material.dart';

class WalletScreenTab extends StatefulWidget {
  const WalletScreenTab({Key? key}) : super(key: key);

  @override
  State<WalletScreenTab> createState() => _WalletScreenTabState();
}

class _WalletScreenTabState extends State<WalletScreenTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Wallet',
        onTap: () {},
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WalletScreen()));
            },
            child: Container(
              height: height(context) * 0.15,
              margin: const EdgeInsets.all(21),
              decoration: myFillBoxDecoration(1, primary, 31),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Balance",
                        style: bodyText16normal(color: Colors.white),
                      ),
                      Text(
                        "Rs 1.234",
                        style: bodyText20w700(color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    height: height(context) * 0.05,
                    width: width(context) * 0.4,
                    decoration: myFillBoxDecoration(1, Colors.white, 51),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.account_balance_outlined,
                          color: Colors.black,
                        ),
                        Text(
                          "Send to bank",
                          style: bodyText14normal(color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payment Details",
                    style: bodyText16w600(color: Colors.black),
                  ),
                  Text(
                    "See All",
                    style: bodyText14w600(color: primary),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          SizedBox(
            height: height(context) * 0.50,
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EReceiptScreen()));
                    },
                    child: Column(
                      children: [
                        Container(
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
                                  "ayush_singh",
                                  style: bodyText16w600(color: Colors.black),
                                ),
                                Text("ayush_singh",
                                    style:
                                        bodyText11Small(color: Colors.black)),
                                SizedBox(
                                  height: height(context) * 0.02,
                                )
                              ],
                            ),
                            trailing: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Rs 12",
                                    style: bodyText16w600(color: Colors.black),
                                  ),
                                  Text(
                                    "Taxi Expense",
                                    style: bodyText11Small(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Divider()
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
