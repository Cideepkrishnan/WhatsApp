import 'package:flutter/material.dart';
import 'package:whatsapp/utils/database/database.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListTile(
                leading: Stack(
                  children: [
                    Container(
                      height: 80,
                      width: 60,
                      child: Icon(
                        Icons.group,
                        size: 35,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Positioned(
                      bottom: -0,
                      right: -2,
                      child: CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.green[700],
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                title: Text(
                  "New community",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: group.groupdetails.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage:
                          NetworkImage(group.groupdetails[index]["groupimage"]),
                    ),
                    title: Text(group.groupdetails[index]["groupname"]),
                    subtitle: Text("Only community admins ca...."),
                    trailing: Text(group.groupdetails[index]["groupdate"])),
              ),
            ))
          ],
        ));
  }
}
