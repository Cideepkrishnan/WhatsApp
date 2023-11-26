import 'package:flutter/material.dart';
import 'package:whatsapp/utils/color_constant/color_constant.dart';
import 'package:whatsapp/utils/database/database.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 40,
            width: 40,
            child: FittedBox(
              child: FloatingActionButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                onPressed: () {},
                backgroundColor: colorconstant.PrimaryGrey,
                child: Icon(
                  Icons.edit,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {},
            backgroundColor: Colors.green[600],
            child: Icon(Icons.camera_alt,
                color: Theme.of(context).colorScheme.primary),
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
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 270,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Theme.of(context).colorScheme.primary,
                    )
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
                        color: Theme.of(context).colorScheme.primary,
                      )),
                    ),
                  )
                ],
              ),
              title: Text(
                "My status",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              subtitle: Text(
                "Tap to add status update",
                style:
                    TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Recent updates",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
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
                  title: Text(
                    database.forstatus[index]["StatusName"],
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  subtitle: Text(
                    database.forstatus[index]["timeofstatus"],
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
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
