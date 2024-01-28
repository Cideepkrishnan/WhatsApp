import 'package:flutter/material.dart';
import 'package:whatsapp/utils/database/database.dart';

class new_group extends StatelessWidget {
  const new_group({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: ListTile(
          title: Text(
            "New group",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          subtitle: Text(
            "Add participants",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.primary,
            size: 29,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[700],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              duration: Duration(seconds: 1),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              content:
                  Center(child: Text("At least 1 contact must be selected"))));
        },
        child: Icon(
          Icons.arrow_forward,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 190, top: 20, left: 20),
              child: Text(
                "Contacts on WhatsApp",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: database.forcontact.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10.0),
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
