import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/utils/color_constant/color_constant.dart';
import 'package:whatsapp/utils/database/database.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/settings/Profle/Profile_screen.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  Uint8List? _image;
  File? selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          "Settings",
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.primary,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ));
                },
                child: ListTile(
                  leading: Stack(
                    children: [
                      _image != null
                          ? CircleAvatar(
                              radius: 70, backgroundImage: MemoryImage(_image!))
                          : CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(""
                                  "https://i.pinimg.com/564x/a4/e8/8f/a4e88fc30e5e5cf7ce63608defec0d6d.jpg"),
                            ),
                    ],
                  ),
                  title: Text(
                    "Cideep krishna",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  subtitle: Text(
                    "in the end you only have ...",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  trailing: Icon(
                    Icons.qr_code,
                    size: 35,
                    color: Colors.green[700],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: .9,
              color: Theme.of(context).colorScheme.primary,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: database.settings.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => screns.screen[index],
                        ));
                  },
                  child: ListTile(
                    leading: database.settings[index]["icon"],
                    title: Text(
                      database.settings[index]["title"],
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    subtitle: Text(
                      database.settings[index]["subtitle"],
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedImage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedImage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }
}
