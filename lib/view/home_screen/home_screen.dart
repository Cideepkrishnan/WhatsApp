import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/utils/Theme/theme_provider.dart';
import 'package:whatsapp/utils/color_constant/color_constant.dart';
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
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Text(
            "WhatsApp",
            style: GoogleFonts.montserrat(
                fontSize: 20, color: Theme.of(context).colorScheme.primary),
          ),
          actions: [
            InkWell(
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
              child: Icon(
                Icons.dark_mode,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.camera_alt_outlined,
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(
              width: 25,
            ),
            // AnimSearchBar(
            //   helpText: "search",
            //   width: 250,
            //   textController: textcontroller,
            //   onSuffixTap: () {
            //     setState(() {
            //       textcontroller.clear();
            //     });
            //   },
            //   onSubmitted: (String) {},
            // ),
            Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(
              width: 20,
            ),
            Pop_Screen()
          ],
          bottom: TabBar(
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                      width: 3, color: Theme.of(context).colorScheme.primary)),
              indicatorColor: colorconstant.PrimaryBlack,
              tabs: [
                Positioned(
                    left: -1,
                    child: Icon(
                      Icons.group,
                      color: Theme.of(context).colorScheme.primary,
                    )),
                Text(
                  "Chats",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                Text(
                  "Status",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                Text(
                  "Calls",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                )
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
