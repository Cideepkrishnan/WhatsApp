import 'package:flutter/material.dart';
import 'package:whatsapp/utils/database/database.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

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
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Status",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 270,
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 29,
                  ),
                  Positioned(
                    bottom: 2,
                    right: 1,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.greenAccent,
                      child: Center(
                          child: Icon(
                        Icons.add,
                        size: 21,
                        color: Colors.white,
                      )),
                    ),
                  )
                ],
              ),
              title: Text("My status"),
              subtitle: Text("Tap to add status update"),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Recent updates"),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: database.forchat.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.green[600],
                      ),
                      Positioned(
                          bottom: 5,
                          left: 7,
                          child: CircleAvatar(
                            radius: 23,
                            backgroundColor: Colors.black,
                          ))
                    ],
                  ),
                  title: Text(database.forchat[index]["Name"]),
                  subtitle: Text(database.forchat[index]["timeofstatus"]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
