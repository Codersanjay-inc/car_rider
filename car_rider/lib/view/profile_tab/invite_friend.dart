import 'package:car_rider/res/colors.dart';
import 'package:car_rider/res/styles.dart';
import 'package:car_rider/res/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../res/dimensions.dart';

class InviteFriends extends StatefulWidget {
  const InviteFriends({Key? key}) : super(key: key);

  @override
  State<InviteFriends> createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Invite Friends",),
      body: Container(
        margin: EdgeInsets.all(11),
        child: ListView.builder(itemCount: 5,itemBuilder: (context, index) {
          return Container(
            height: height(context) * 0.1,

            child: ListTile(

              leading: CircleAvatar(
                radius: 24,
                child: Image.asset("assets/images/user1.png"),
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text("Daniel Austin",style: bodyText16w600(color: Colors.black),),
                  Text("+1-300-555-0135"),
                  SizedBox(height: height(context)*0.02,)
                ],
              ),
              trailing: Container(
                margin: EdgeInsets.only(top: 4),
                padding: EdgeInsets.symmetric(horizontal: 21,vertical: 4),
                decoration: myFillBoxDecoration(1, primary, 11),
                child: Text("Invite"),
              ),
            ),
          );
        }),
      ),
    );
  }
}
