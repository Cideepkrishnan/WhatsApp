import 'package:flutter/material.dart';
import 'package:whatsapp/utils/color_constant/color_constant.dart';

class linked_device extends StatelessWidget {
  const linked_device({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text("Linked devices"),
      ),
      body: Column(
        children: [
          Container(
            // color: Colors.amberAccent,
            child: Column(
              children: [
                Center(
                  child: FlutterLogo(
                    size: 170,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Use WhatsApp on Web,Desktop,and other devices"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[600],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          minimumSize: Size(335, 54)),
                      onPressed: () {},
                      child: Text(
                        "Link a device",
                      )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Container(
            // color: Colors.amberAccent,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Device status",
                    style: TextStyle(color: colorconstant.PrimaryGrey),
                  ),
                  subtitle: Text(
                    "Tap a device to log out",
                    style: TextStyle(color: colorconstant.PrimaryGrey),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        actions: [
                          Column(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Log out",
                                      style: TextStyle(color: Colors.red))),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Close",
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          )
                        ],
                        elevation: 2,
                        icon: Icon(Icons.window_sharp),
                        title: Text("Windows"),
                        content: Text("Last active 17 Januvary,8:35 pm"),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green[600],
                      radius: 30,
                      child: Icon(
                        Icons.window_sharp,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "Windows",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    subtitle: Text("Last active 17 Januvary,8:35 pm"),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
                "Your personal messages are end-to-end encrypted on all your devices"),
          )
        ],
      ),
    );
  }
}
