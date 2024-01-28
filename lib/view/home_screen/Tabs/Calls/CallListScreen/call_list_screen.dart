import 'package:flutter/material.dart';
import 'package:whatsapp/utils/color_constant/color_constant.dart';
import 'package:whatsapp/utils/database/database.dart';

class CallListScreen extends StatefulWidget {
  const CallListScreen({super.key});

  @override
  State<CallListScreen> createState() => _CallListScreenState();
}

class _CallListScreenState extends State<CallListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: ListTile(
          title: Text(
            "Select contact",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          subtitle: Text(
            "362 contacts",
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 35,
            color: Theme.of(context).colorScheme.primary,
          )
        ],
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.green[600],
                  child: Icon(
                    Icons.link,
                    size: 29,
                    color: colorconstant.PrimaryWhite,
                  ),
                ),
                title: Text(
                  "New call link",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.green[600],
                  child: Icon(
                    Icons.person_add,
                    size: 29,
                    color: colorconstant.PrimaryWhite,
                  ),
                ),
                title: Text(
                  "New contact",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                trailing: Icon(
                  Icons.qr_code_2,
                  size: 35,
                  color: colorconstant.PrimaryGrey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220, top: 20),
              child: Text("Frequently contacted"),
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(
                        database.forcontact[index]["contactimage"]),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(database.forcontact[index]["contactname"]),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220, top: 20),
              child: Text("Contacts on WhatsApp"),
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              itemCount: database.forcall.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage:
                        NetworkImage(database.forcall[index]["CallProfile"]),
                  ),
                  title: Text(database.forcall[index]["CallName"]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
