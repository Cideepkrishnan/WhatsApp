import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/view/home_screen/Tabs/Calls/Calles.dart';
import 'package:whatsapp/view/home_screen/Tabs/Group/Group.dart';
import 'package:whatsapp/view/home_screen/Tabs/Status/Status.dart';
import 'package:whatsapp/view/home_screen/Tabs/chat/chat.dart';
import 'package:whatsapp/view/PopUp_Screen/pop_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 35, 35, 37),
          title: Text(
            "WhatsApp",
            style: GoogleFonts.montserrat(
              fontSize: 20,
            ),
          ),
          actions: [
            Icon(
              Icons.camera_alt_outlined,
            ),
            SizedBox(
              width: 30,
            ),
            AnimSearchBar(
              helpText: "search",
              width: 250,
              textController: textcontroller,
              onSuffixTap: () {
                setState(() {
                  textcontroller.clear();
                });
              },
              onSubmitted: (String) {},
            ),
            SizedBox(
              width: 20,
            ),
            Pop_Screen()
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
