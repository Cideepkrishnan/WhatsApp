import 'package:flutter/material.dart';
import 'package:whatsapp/utils/color_constant/color_constant.dart';
import 'package:whatsapp/utils/database/database.dart';
import 'package:whatsapp/view/home_screen/Tabs/Calls/CallListScreen/call_list_screen.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.green[600],
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CallListScreen(),
              ));
        },
        child: Icon(
          Icons.add_call,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
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
                title: Text(
                  "Create call link",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                subtitle: Text(
                  "Share a link of your WhatsApp call",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                "Recent",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: database.forcall.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        NetworkImage(database.forcall[index]["CallProfile"]),
                  ),
                  title: Text(
                    database.forcall[index]["CallName"],
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  subtitle: Text(
                    database.forcall[index]["MissCaltime"],
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
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
