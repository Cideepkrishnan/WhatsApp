import 'package:flutter/material.dart';
import 'package:whatsapp/utils/color_constant/color_constant.dart';
import 'package:whatsapp/utils/database/database.dart';

class new_bbroadcast extends StatelessWidget {
  const new_bbroadcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: ListTile(
          title: Text(
            "New broadcast",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          subtitle: Text(
            "0 of 256 selected",
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
              behavior: SnackBarBehavior.floating,
              duration: Duration(seconds: 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              content:
                  Center(child: Text("At least 2 contact must be selected"))));
        },
        child: Icon(
          Icons.done_sharp,
          size: 29,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "only contacts wirth +919072462527 in their address book will receive your broadcast messages",
                style: TextStyle(color: colorconstant.PrimaryGrey),
              ),
            ),
            Divider(
              height: 5,
              thickness: 1,
              color: colorconstant.PrimaryGrey,
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
