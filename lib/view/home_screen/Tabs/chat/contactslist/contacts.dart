import 'package:flutter/material.dart';
import 'package:whatsapp/utils/database/database.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: ListTile(
          title: Text(
            "Selected contacts",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          subtitle: Text(
            "365 contcts",
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.primary,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert,
            color: Theme.of(context).colorScheme.primary,
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.green[600],
                    child: Icon(
                      Icons.group,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    "New group",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.green[600],
                    child: Icon(
                      Icons.person_add,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("New contact",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary)),
                  trailing: Icon(
                    Icons.qr_code,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.green[600],
                    child: Icon(
                      Icons.groups,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("New community",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary)),
                )),
            Padding(
              padding: const EdgeInsets.only(right: 220, top: 20),
              child: Text("Contacts on whatsapp"),
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              itemCount: database.forcontact.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(
                        database.forcontact[index]["contactimage"]),
                  ),
                  title: Text(database.forcontact[index]["contactname"]),
                  subtitle: Text(database.forcontact[index]["contactabout"]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
