import 'package:car_rider/res/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../res/dimensions.dart';
import '../../res/styles.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Rating",
      ),
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
                  height: isExpanded
                      ? height(context) * 0.51
                      : height(context) * 0.2,
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
                                child: Text("4.5")),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.black38,
                      ),
                      isExpanded
                          ? Column(
                              children: [
                                Center(
                                  child: Text("Behaviour",style: bodyText16w600(color: Colors.black)),
                                ),
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                Center(
                                  child: Text("Punctuality",style: bodyText16w600(color: Colors.black)),
                                ),
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                Center(
                                  child: Text("Cleanliness",style: bodyText16w600(color: Colors.black)),
                                ),
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                Center(
                                  child: Text("Ride Satisfaction",style: bodyText16w600(color: Colors.black),),
                                ),
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                Divider()
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
