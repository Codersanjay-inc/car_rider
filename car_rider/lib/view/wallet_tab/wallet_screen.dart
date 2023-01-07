import 'package:car_rider/res/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../../res/dimensions.dart';
import '../../res/styles.dart';
import '../../res/widgets/custom_button.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

var profileList = [
  'Store Profiles',
  'Store Profiles1',
  'Store Profiles2',
];

class _WalletScreenState extends State<WalletScreen> {
  List lookingForList = [
    'Rs 100',
    'Rs 500',
    'Rs 1000',
    'Rs 5000',
    'Rs 10000',
    'Rs 25000'
  ];

  List<bool> listBool = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  bool isTrue = false;

  String metricValue = profileList.first;
  int select = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Send money to bank",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 21, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height(context) * 0.1,
                    decoration: myOutlineBoxDecoration(2, primary, 10),
                    child: Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: lookingForList[select],
                            hintStyle: bodyText20w700(color: primary)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  Wrap(
                      spacing: 10,
                      children: List.generate(lookingForList.length, (index) {
                        return GestureDetector(
                            onTap: () {
                              setState(() {
                                listBool[index] = !listBool[select];
                                isTrue = !isTrue;
                                select = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              padding: const EdgeInsets.all(5),
                              width: width(context) * 0.25,
                              decoration:
                                  myOutlineBoxDecoration(1, primary, 11),
                              child: SizedBox(
                                height: height(context) * 0.03,
                                width: width(context) * 0.19,
                                child: Center(
                                  child: Text(
                                    lookingForList[index],
                                    textAlign: TextAlign.center,
                                    style: bodyText14w600(
                                        color: select == index
                                            ? Colors.red
                                            : Colors.black),
                                  ),
                                ),
                              ),
                            ));
                      })),
                  SizedBox(
                    height: height(context) * 0.05,
                  ),
                  Center(
                    child: CustomButton(
                      title: 'Sent to bank',
                      onPressed: () {
                        setFingerPrint(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
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
                  height: height * 0.43,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/icons/icon_wallet1.png',color: primary,),
                      Text(
                        'Money sent Successful',
                        style: bodyText20w700(color: black),
                      ),
                      const Text(
                        'you have successfully sent money in your bank account.',
                        textAlign: TextAlign.center,
                      ),

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
                              'Ok',
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
