import 'package:flutter/material.dart';
import 'package:whatsapp/utils/color_constant/color_constant.dart';
import 'package:whatsapp/utils/database/database.dart';
import 'package:whatsapp/view/home_screen/Tabs/chat/contactslist/contacts.dart';
import 'package:whatsapp/view/home_screen/Tabs/chat/detail.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.green[600],
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Contacts(),
              ));
        },
        child: Icon(
          Icons.message,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: database.forchat.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => detail(),
                  ));
            },
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage:
                    NetworkImage(database.forchat[index]["profile"]),
              ),
              title: Text(
                database.forchat[index]["Name"],
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              subtitle: Text(database.forchat[index]["chat"],
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary)),
              trailing: Column(
                children: [
                  Text(database.forchat[index]["time"],
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary)),
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.greenAccent[700],
                    child: Text(
                      database.forchat[index]["message"],
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.background,
                          fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
