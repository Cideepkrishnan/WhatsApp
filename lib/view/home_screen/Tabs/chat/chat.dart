import 'package:flutter/material.dart';
import 'package:whatsapp/utils/database/database.dart';
import 'package:whatsapp/view/home_screen/Tabs/chat/detail.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[600],
        onPressed: () {},
        child: Icon(Icons.message),
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
              title: Text(database.forchat[index]["Name"]),
              subtitle: Text(database.forchat[index]["chat"]),
              trailing: Column(
                children: [
                  Text(database.forchat[index]["time"]),
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.greenAccent[700],
                    child: Text(
                      database.forchat[index]["message"],
                      style: TextStyle(color: Colors.black, fontSize: 12),
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
