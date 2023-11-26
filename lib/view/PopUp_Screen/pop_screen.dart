import 'package:flutter/material.dart';
import 'package:whatsapp/utils/color_constant/color_constant.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/linked_device/linked_device.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/new_broadcast/new_broadcast.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/new_group/new_group.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/payments/payments.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/settings/settings.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/Stared_message/starred_message.dart';

class Pop_Screen extends StatelessWidget {
  const Pop_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Theme.of(context).colorScheme.background,
      icon: Icon(Icons.more_vert, color: Theme.of(context).colorScheme.primary),
      itemBuilder: (context) => [
        PopupMenuItem(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => new_group(),
                ));
          },
          child: Text(
            "New group",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          value: 1,
        ),
        PopupMenuItem(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => new_bbroadcast(),
                ));
          },
          child: Text("New broadcast",
              style: TextStyle(color: Theme.of(context).colorScheme.primary)),
          value: 2,
        ),
        PopupMenuItem(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => linked_device(),
                ));
          },
          child: Text("Linked devices",
              style: TextStyle(color: Theme.of(context).colorScheme.primary)),
          value: 3,
        ),
        PopupMenuItem(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => starred_message(),
                ));
          },
          child: Text("Starred messages",
              style: TextStyle(color: Theme.of(context).colorScheme.primary)),
          value: 4,
        ),
        PopupMenuItem(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => payments(),
                ));
          },
          child: Text("Payments",
              style: TextStyle(color: Theme.of(context).colorScheme.primary)),
          value: 5,
        ),
        PopupMenuItem(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => settings(),
                ));
          },
          child: Text("Settings",
              style: TextStyle(color: Theme.of(context).colorScheme.primary)),
          value: 6,
        )
      ],
    );
  }
}
