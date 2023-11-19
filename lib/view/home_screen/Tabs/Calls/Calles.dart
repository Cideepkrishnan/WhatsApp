import 'package:flutter/material.dart';
import 'package:whatsapp/utils/database/database.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green[700],
                  child: Icon(
                    Icons.link,
                    color: Colors.white,
                    size: 29,
                  ),
                ),
                title: Text("Create call link"),
                subtitle: Text("Share a link of your WhatsApp call"),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                "Recent",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: database.forchat.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        NetworkImage(database.forchat[index]["profile"]),
                  ),
                  title: Text(database.forchat[index]["Name"]),
                  subtitle: Text(database.forchat[index]["MissCaltime"]),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green[800],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
