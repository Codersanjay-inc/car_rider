import 'package:car_rider/res/colors.dart';
import 'package:car_rider/res/styles.dart';
import 'package:car_rider/view/home_tab/calling_screen.dart';
import 'package:car_rider/view/home_tab/chat_screen.dart';
import 'package:flutter/material.dart';

import '../../res/dimensions.dart';

class ChatScreenTab extends StatefulWidget {
  const ChatScreenTab({Key? key}) : super(key: key);

  @override
  State<ChatScreenTab> createState() => _ChatScreenTabState();
}

class _ChatScreenTabState extends State<ChatScreenTab> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Inbox"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 11),
            child: CircleAvatar(
              child: Image.asset("assets/images/user1.png"),
            ),
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.black,
          labelColor: primary,
          tabs: const <Widget>[
            Tab(
              child: Text("Chat"),
            ),
            Tab(
              child: Text("Calls"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: ChatTab(
              status: 'Chats',
            ),
          ),
          Center(
            child: CallTab(
              status: 'Calls',
            ),
          ),
        ],
      ),
    );
  }
}

class ChatTab extends StatefulWidget {
  final String status;

  const ChatTab({Key? key, required this.status}) : super(key: key);

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
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
                            "Daniel Austin",
                            style: bodyText16w600(color: Colors.black),
                          ),
                          Text("The lorem ipsum is a placeholder........ ",style: bodyText11Small(color: Colors.black)),
                          SizedBox(
                            height: height(context) * 0.02,
                          )
                        ],
                      ),
                      trailing: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("4:52 pm"),
                            Container(
                              height: height(context)*0.024,
                              width: width(context)*0.05,
                              decoration: myFillBoxDecoration(1, primary, 51),
                              child: Center(child: Text("1",style: bodyText11Small(color: Colors.white))),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider()
                ],
              ),
            );
          }),
    );
  }
}


class CallTab extends StatefulWidget {
  final String status;

  const CallTab({Key? key, required this.status}) : super(key: key);

  @override
  State<CallTab> createState() => _CallTabState();
}

class _CallTabState extends State<CallTab> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
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
                        Text("ayush_singh",style: bodyText11Small(color: Colors.black)),
                        SizedBox(
                          height: height(context) * 0.02,
                        )
                      ],
                    ),
                    trailing: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CallingScreen()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("4:52 pm"),
                          Container(
                            height: height(context)*0.041,
                            width: width(context)*0.084,
                            decoration: myFillBoxDecoration(1, Colors.black.withOpacity(0.04), 51),
                            child: Icon(Icons.call,size: 21,),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Divider()
              ],
            );
          }),
    );
  }
}
