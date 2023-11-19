import 'package:flutter/material.dart';
import 'package:whatsapp/utils/database/database.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.grey,
            child: Icon(Icons.edit),
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green[600],
            child: Icon(Icons.camera_alt_outlined),
          ),
        ],
      ),
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
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/564x/a4/e8/8f/a4e88fc30e5e5cf7ce63608defec0d6d.jpg"),
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
              itemCount: database.forstatus.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.green[400],
                      ),
                      Positioned(
                          bottom: 4,
                          left: 6,
                          child: CircleAvatar(
                            radius: 24,
                            backgroundImage: NetworkImage(
                                database.forstatus[index]["StatusImage"]),
                          ))
                    ],
                  ),
                  title: Text(database.forstatus[index]["StatusName"]),
                  subtitle: Text(database.forstatus[index]["timeofstatus"]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
