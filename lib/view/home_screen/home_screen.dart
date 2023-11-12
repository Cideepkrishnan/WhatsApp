import 'package:flutter/material.dart';
import 'package:whatsapp/view/home_screen/Tabs/Calles.dart';
import 'package:whatsapp/view/home_screen/Tabs/Group.dart';
import 'package:whatsapp/view/home_screen/Tabs/Status.dart';
import 'package:whatsapp/view/home_screen/Tabs/chat/chat.dart';
import 'package:whatsapp/view/home_screen/Tabs/chat/detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 35, 35, 37),
          title: Text("WhatsApp"),
          actions: [
            Icon(
              Icons.camera_alt_outlined,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.more_vert)
          ],
          bottom: TabBar(
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3, color: Colors.white)),
              indicatorColor: Colors.black,
              tabs: [
                Positioned(left: -1, child: Icon(Icons.group)),
                Text("Chats"),
                Text("Status"),
                Text("Calls")
              ]),
        ),
        body: TabBarView(children: [
          GroupScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen()
        ]),
      ),
    );
  }
}
