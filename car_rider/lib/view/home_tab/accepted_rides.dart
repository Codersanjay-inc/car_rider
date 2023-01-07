import 'package:car_rider/res/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../res/dimensions.dart';
import '../../res/styles.dart';

class AcceptedRides extends StatefulWidget {
  const AcceptedRides({Key? key}) : super(key: key);

  @override
  State<AcceptedRides> createState() => _AcceptedRidesState();
}

class _AcceptedRidesState extends State<AcceptedRides> {

  bool isExpanded = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Accepted Ride",),
      body: Container(
        margin: const EdgeInsets.all(4),
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: const BorderSide(
                    color: Colors.black,
                    width: 0.1,
                  ),
                ),
                child: SizedBox(
                  height:
                  isExpanded ? height(context) * 0.71 : height(context) * 0.2,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height(context) * 0.13,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(21),
                              child: CircleAvatar(
                                child: Image.asset("assets/images/user1.png"),
                              ),
                            ),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Daniel Austin\n",
                                      style: bodyText20w700(color: Colors.black)),
                                  TextSpan(
                                      text: "+91-00000000",
                                      style: bodyText13normal(color: Colors.black)),
                                ])),
                            Container(
                                margin: const EdgeInsets.all(11),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 11, vertical: 4),
                                decoration: myFillBoxDecoration(1, Colors.greenAccent, 11),
                                child: Text("Accepted ")),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.black38,
                      ),
                      isExpanded
                          ? Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.location_on_outlined),
                                  Text("4.5 km"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Icon(Icons.punch_clock_outlined),
                                  Text("20 mins"),
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(Icons
                                      .account_balance_wallet_outlined),
                                  Text("Rs.60"),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height(context) * 0.01,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: const [
                                  Text("Date & Time"),
                                ],
                              ),
                              const SizedBox(),
                              Row(
                                children: const [
                                  Text("Dec 20,2024 I 10:00 AM"),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height(context) * 0.01,
                          ),
                          const Divider(
                            color: Colors.black38,
                          ),
                          Container(
                            height: height(context) * 0.2,
                            margin: const EdgeInsets.all(11),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                      const EdgeInsets.only(right: 11),
                                      child: CircleAvatar(
                                        child: Image.asset(
                                            "assets/images/user1.png"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: height(context) * 0.05,
                                    ),
                                    Container(
                                      margin:
                                      const EdgeInsets.only(right: 11),
                                      child: CircleAvatar(
                                        child: Image.asset(
                                            "assets/images/user1.png"),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text("Soft Bank",
                                        style: bodyText20w700(
                                            color: Colors.black)),
                                    const Text(
                                        "35 Oak Ave, Antioch, TN 37013"),
                                    SizedBox(
                                      height: height(context) * 0.05,
                                    ),
                                    Text("Soft Bank",
                                        style: bodyText20w700(
                                            color: Colors.black)),
                                    const Text(
                                        "26 State St. Daphne, Al 36526"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                            const EdgeInsets.symmetric(horizontal: 15),
                            decoration:
                            myFillBoxDecoration(1, Colors.white, 27),
                            height: height(context) * 0.2,
                            child: Image.asset(
                                "assets/images/small_location1.png"),
                          ),
                        ],
                      )
                          : const SizedBox(),
                      InkWell(
                        onTap: () {
                          isExpanded = !isExpanded;
                          setState(() {});
                        },
                        child: Container(
                          margin: const EdgeInsets.all(3),
                          child: Icon(isExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
