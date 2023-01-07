import 'package:car_rider/res/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../res/dimensions.dart';
import '../../res/styles.dart';
import '../../res/widgets/custom_button.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Edit Profile",),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: width(context)*0.05),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height(context) * 0.1,
                margin: EdgeInsets.only(top: 10),
                child: Center(
                  child: SizedBox(
                    height: 110,
                    width: 110,
                    child: Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.expand,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage("assets/images/user1.png"),
                        ),
                        Positioned(
                            bottom: 0,
                            right: -25,
                            child: RawMaterialButton(
                              onPressed: () {},
                              elevation: 2.0,

                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.black,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height(context) * 0.05,
              ),
              const CustomTextField(
                controller: null,
                label: 'Name',

              ),
              const CustomTextField(
                controller: null,
                label: 'Surname',

              ),
              const CustomTextField(
                controller: null,
                label: 'Date of birth',

              ), const CustomTextField(
                controller: null,
                label: 'Email ',

              ),
              const CustomTextField(
                controller: null,
                label: 'Driving license ID',

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Gender preference",style: bodyText14w600(color: Colors.black),),
              ),
              SizedBox(
                height: height(context) * 0.25,
              ),
              CustomButton(

             title: 'Update', onPressed: () {  },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;

  const CustomTextField(
      {Key? key,
        required this.label,

        required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: myFillBoxDecoration(1, Colors.white, 17),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: label,

            contentPadding: EdgeInsets.only(left:20),
            border: InputBorder.none),
      ),
    );
  }
}