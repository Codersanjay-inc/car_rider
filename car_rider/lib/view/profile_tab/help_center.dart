import 'package:car_rider/res/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../../res/dimensions.dart';

class HelpCenter extends StatefulWidget {
   HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  bool isExpand = false;
  bool isExpand2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Help Center",),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12, left: 14),
            padding: const EdgeInsets.all(10),
            height: height(context) * 0.08,
            width: width(context) * 0.9,
            decoration: BoxDecoration(
                color: white,
                borderRadius: isExpand == false
                    ? BorderRadius.circular(15)
                    : const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(color: white, blurRadius: 1, offset: const Offset(0, 0))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  'How to use App?',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w600, color: black),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        isExpand = !isExpand;
                      });
                    },
                    icon:  Icon(
                      Icons.expand_more,
                      size: 35,
                      color: black,
                    ))
              ],
            ),
          ),
          if (isExpand)
            Container(
              margin: const EdgeInsets.only(left: 14),
              padding: const EdgeInsets.all(10),
              height: height(context) * 0.12,
              width: width(context) * 0.9,
              decoration:  BoxDecoration(
                  color: white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(color: white, blurRadius: 1, offset: const Offset(0, 1))
                  ]),
              child:  Text(
                'Lectus vel non varius interdum vel tellus sed mattis. Sit laoreet auctor arcu mauris tincidunt sociis tristique pharetra neque.',
                style: TextStyle(color: black),
              ),
            ),
          Container(
            margin: const EdgeInsets.only(top: 12, left: 14),
            padding: const EdgeInsets.all(10),
            height: height(context) * 0.08,
            width: width(context) * 0.9,
            decoration: BoxDecoration(
                color: white,
                borderRadius: isExpand2 == false
                    ? BorderRadius.circular(15)
                    :  const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(color: white, blurRadius: 1, offset: const Offset(0, 0))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  'How does subscription works?',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w600, color: black),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        isExpand2 = !isExpand2;
                      });
                    },
                    icon:  Icon(
                      Icons.expand_more,
                      size: 35,
                      color: black,
                    ))
              ],
            ),
          ),
          if (isExpand2)
            Container(
              margin: const EdgeInsets.only(left: 14),
              padding: const EdgeInsets.all(10),
              height: height(context) * 0.12,
              width: width(context) * 0.9,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(color: white, blurRadius: 1, offset: const Offset(0, 1))
                  ]),
              child:  Text(
                'Lectus vel non varius interdum vel tellus sed mattis. Sit laoreet auctor arcu mauris tincidunt sociis tristique pharetra neque.',
                style: TextStyle(color: black),
              ),
            ),
          Container(
            margin: const EdgeInsets.only(top: 12, left: 14),
            padding: const EdgeInsets.all(10),
            height: height(context) * 0.08,
            width: width(context) * 0.9,
            decoration: BoxDecoration(
                color: white,
                borderRadius: isExpand == false
                    ? BorderRadius.circular(15)
                    :  const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                boxShadow:  [

                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  'How to use App?',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w600, color: black),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        isExpand = !isExpand;
                      });
                    },
                    icon:  Icon(
                      Icons.expand_more,
                      size: 35,
                      color: black,
                    ))
              ],
            ),
          ),
          if (isExpand)
            Container(
              margin: const EdgeInsets.only(left: 14),
              padding: const EdgeInsets.all(10),
              height: height(context) * 0.12,
              width: width(context) * 0.9,
              decoration:  BoxDecoration(
                  color: white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    
                  ]),
              child:  Text(
                'Lectus vel non varius interdum vel tellus sed mattis. Sit laoreet auctor arcu mauris tincidunt sociis tristique pharetra neque.',
                style: TextStyle(color: black),
              ),
            ),
          Container(
            margin: const EdgeInsets.only(top: 12, left: 14),
            padding: const EdgeInsets.all(10),
            height: height(context) * 0.08,
            width: width(context) * 0.9,
            decoration: BoxDecoration(
                color: white,
                borderRadius: isExpand == false
                    ? BorderRadius.circular(15)
                    : const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(color: white, blurRadius: 1, offset: const Offset(0, 0))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  'How to use App?',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w600, color: black),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        isExpand = !isExpand;
                      });
                    },
                    icon:  Icon(
                      Icons.expand_more,
                      size: 35,
                      color: black,
                    ))
              ],
            ),
          ),
          if (isExpand)
            Container(
              margin: const EdgeInsets.only(left: 14),
              padding: const EdgeInsets.all(10),
              height: height(context) * 0.12,
              width: width(context) * 0.9,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                 
                  ]),
              child: Text(
                'Lectus vel non varius interdum vel tellus sed mattis. Sit laoreet auctor arcu mauris tincidunt sociis tristique pharetra neque.',
                style: TextStyle(color: black),
              ),
            ),
        ],
      ),
    );
  }
}