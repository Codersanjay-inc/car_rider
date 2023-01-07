import 'package:car_rider/res/widgets/custom_appbar.dart';
import 'package:car_rider/res/widgets/custom_button.dart';
import 'package:car_rider/view/profile_tab/help_center.dart';
import 'package:car_rider/view/profile_tab/invite_friend.dart';
import 'package:car_rider/view/profile_tab/languages.dart';
import 'package:car_rider/view/profile_tab/manage_notification.dart';
import 'package:car_rider/view/profile_tab/payment_screen.dart';
import 'package:car_rider/view/profile_tab/privacy_policy.dart';
import 'package:car_rider/view/profile_tab/profile_edit_screen.dart';
import 'package:car_rider/view/profile_tab/secruity.dart';
import 'package:flutter/material.dart';

import '../../res/dimensions.dart';
import '../../res/styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isUpgrade = false;

  void _showLogoutOption() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(21), topRight: Radius.circular(21)),
        ),
        builder: (builder) {
          return SizedBox(
            height: height(context) * 0.27,
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
                        child: Text(
                          "Logout",
                          style: bodyText20w700(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(),
                Text(
                  "Are you sure you want to logout?",
                  style: bodyText14normal(color: Colors.black),
                ),
                SizedBox(height: height(context)*0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        width: width(context) * 0.4,
                        child: CustomButton(title: "Logout", onPressed: () {})),
                    SizedBox(
                        width: width(context) * 0.4,
                        child: CustomButton(title: "Cancel", onPressed: () {})),
                  ],
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Profile",
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: width(context),
              margin: EdgeInsets.all(11),
              padding: EdgeInsets.all(11),
              child: CircleAvatar(
                child: Image.asset(
                  "assets/images/user1.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Text(
                      "Andrew Ainsley",
                      style: bodyText18w600(color: Colors.black),
                    ),
                    Text(
                      "+1 111 467 378 399",
                      style: bodyText14normal(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            CustomListTileWidget(
              iconUrl: 'assets/icons/icon_profile1.png',
              title: 'Edit Profile',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileEditScreen()));
              },
            ),

            CustomListTileWidget(
              iconUrl: 'assets/icons/icon_notification1.png',
              title: 'Notification',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ManageNotification()));
              },
            ),
            CustomListTileWidget(
              iconUrl: 'assets/icons/icon_payment1.png',
              title: 'Payment',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentsMethodScreen()));
              },
            ),
            CustomListTileWidget(
              iconUrl: 'assets/icons/icon_security1.png',
              title: 'Security',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecurityScreen()));
              },
            ),
            CustomListTileWidget(
              iconUrl: 'assets/icons/icon_language1.png',
              title: 'Language',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LanguageSelectScreen()));
              },
            ),
            CustomListTileWidget(
              iconUrl: 'assets/icons/icon_privacy1.png',
              title: 'Privacy Policy',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PrivacyPolicy()));
              },
            ),
            CustomListTileWidget(
              iconUrl: 'assets/icons/icon_help1.png',
              title: 'Help Center',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpCenter()));
              },
            ),
            CustomListTileWidget(
              iconUrl: 'assets/icons/icon_invite1.png',
              title: 'Invite Friends',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InviteFriends()));
              },
            ),
            SizedBox(
              height: height(context) * 0.07,
              child: ListTile(
                onTap: () {
                  _showLogoutOption();
                },
                leading: Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: Text(
                  "Logout",
                  style: bodyText18w600(color: Colors.red),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                  size: 17,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomListTileWidget extends StatelessWidget {
  final String iconUrl;
  final VoidCallback onTap;
  final String title;

  const CustomListTileWidget({
    Key? key,
    required this.onTap,
    required this.title,
    required this.iconUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: height(context) * 0.07,
        child: ListTile(
          leading: Container(
            height: height(context) * 0.03,
            width: width(context) * 0.1,
            child: Image.asset(iconUrl),
          ),
          title: Text(title),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.black,
            size: 17,
          ),
        ),
      ),
    );
  }
}
