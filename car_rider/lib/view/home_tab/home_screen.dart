import 'package:car_rider/res/colors.dart';
import 'package:car_rider/res/dimensions.dart';
import 'package:car_rider/res/styles.dart';
import 'package:car_rider/view/home_tab/accepted_rides.dart';
import 'package:car_rider/view/home_tab/canceled_screen.dart';
import 'package:car_rider/view/home_tab/chat_screen_tab.dart';
import 'package:car_rider/view/home_tab/notification_screen.dart';
import 'package:car_rider/view/home_tab/rating_screen.dart';
import 'package:flutter/material.dart';

import '../../res/widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(21), topRight: Radius.circular(21)),
        ),
        builder: (builder) {
          return SizedBox(
            height: height(context) * 0.37,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.all(14),
                    child: Center(
                      child: Container(
                        height: 7,
                        width: width(context) * 0.1,
                        decoration: myFillBoxDecoration(1, Colors.grey, 21),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: myFillBoxDecoration(1, primaryDark, 21),
                  margin: const EdgeInsets.all(21),
                  padding: const EdgeInsets.all(21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AcceptedRides()));
                        },
                        child: Column(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/success1.png"),
                            ),
                            Text(
                              "20%",
                              style: bodyText16w600(color: Colors.black),
                            ),
                            Text(
                              "Accepted",
                              style: bodyText16w600(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RatingScreen()));
                        },
                        child: Column(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/rate1.png"),
                            ),
                            Text(
                              "4.0",
                              style: bodyText16w600(color: Colors.black),
                            ),
                            Text(
                              "Rating",
                              style: bodyText16w600(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CanceledRides()));
                        },
                        child: Column(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/cancel1.png"),
                            ),
                            Text(
                              "20%",
                              style: bodyText16w600(color: Colors.black),
                            ),
                            Text(
                              "Canceled",
                              style: bodyText16w600(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  void initState() {
    Future.delayed(
      Duration.zero,
      () {
        setFingerPrint(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 10),
                  decoration: myFillBoxDecoration(1, lightBlue, 51),
                  child: IconButton(
                      onPressed: () {
                        _modalBottomSheetMenu();
                      },
                      icon: Icon(
                        Icons.search,
                        color: black,
                      ))),
              Container(
                  margin: const EdgeInsets.only(left: 10),
                  decoration: myFillBoxDecoration(1, lightBlue, 51),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreenTab()));
                      },
                      icon: Icon(
                        Icons.wechat_outlined,
                        color: black,
                      ))),
              Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  decoration: myFillBoxDecoration(1, lightBlue, 51),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationScreen()));
                      },
                      icon: Icon(
                        Icons.notifications_outlined,
                        color: black,
                      ))),
            ],
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: height(context) * 0.9,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/location.png"))),
          ),
          Positioned(
            left: width(context)*0.4,
            top: height(context)*0.5,
              child: CircleAvatar(
            radius: 24,
            child: Image.asset("assets/images/user1.png"),
          ))
        ],
      ),
    );
  }

  // finger print
  setFingerPrint(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              contentPadding: const EdgeInsets.all(6),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              content: Builder(
                builder: (context) {
                  var height = MediaQuery.of(context).size.height;
                  var width = MediaQuery.of(context).size.width;

                  return Container(
                      height: height * 0.52,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/set_finger1.png',
                            color: primary,
                          ),
                          Text(
                            'Set Your Fingerprint',
                            style: bodyText20w700(color: black),
                          ),
                          Text(
                            'Add a fingerprint to make your account more secure. ',
                            textAlign: TextAlign.center,
                          ),
                          addVerticalSpace(height * 0.04),
                          CustomButton(
                              title: 'Continue',
                              onPressed: () {
                                Navigator.pop(context);
                                setLocationDialog(context);
                              }),
                          InkWell(
                            onTap: () {
                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (ctx) => MyNavigationBar()));
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 50,
                              width: width * 0.92,
                              decoration: myFillBoxDecoration(
                                  0, primary.withOpacity(0.3), 50),
                              child: Center(
                                child: Text(
                                  'Skip',
                                  style: bodyText16w600(color: black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ));
                },
              ),
            ));
  }

  // Location
  setLocationDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              contentPadding: const EdgeInsets.all(6),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              content: Builder(
                builder: (context) {
                  var height = MediaQuery.of(context).size.height;
                  var width = MediaQuery.of(context).size.width;

                  return Container(
                      height: height * 0.52,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/location_pin1.png',
                            color: primary,
                          ),
                          Text(
                            'Enable Location',
                            style: bodyText20w700(color: black),
                          ),
                          Text(
                            'We need access to your location to be able to use this service.',
                            textAlign: TextAlign.center,
                          ),
                          addVerticalSpace(height * 0.04),
                          CustomButton(
                              title: 'Enable Now',
                              onPressed: () {
                                // Navigator.pushReplacement(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (ctx) => MyNavigationBar()));
                                Navigator.pop(context);
                              }),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 50,
                              width: width * 0.92,
                              decoration: myFillBoxDecoration(
                                  0, primary.withOpacity(0.3), 50),
                              child: Center(
                                child: Text(
                                  'Skip',
                                  style: bodyText16w600(color: black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ));
                },
              ),
            ));
  }
}
