import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Uint8List? _image;
  File? selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 1,
        title: Text(
          "Profile",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Stack(
                children: [
                  _image != null
                      ? CircleAvatar(
                          radius: 70, backgroundImage: MemoryImage(_image!))
                      : CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                              "https://th.bing.com/th/id/OIP.ok20ZEluhnlQQzWG26XEnwHaHa?pid=ImgDet&rs=1"),
                        ),
                  Positioned(
                    bottom: 3,
                    right: 4,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.green[800],
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            showImagePickerOption(context);
                          },
                          child: Icon(
                            Icons.camera_alt,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: Text(
              "Name",
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
            subtitle: Text(
              "Cideep krishnan",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
            trailing: Icon(
              Icons.edit,
              color: Colors.green[700],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
            child: Divider(
              thickness: 1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: Text(
              "About",
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
            subtitle: Text(
              "In the end you only have yourself",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
            trailing: Icon(
              Icons.edit,
              color: Colors.green[700],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
            child: Divider(
              thickness: 1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.call,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: Text(
              "Phone",
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
            subtitle: Text(
              "9072462527",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
            child: Divider(
              thickness: 1,
              color: Theme.of(context).colorScheme.primary,
            ),
          )
        ],
      ),
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        shape: Border.symmetric(),
        context: context,
        builder: (builder) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 9,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                      onTap: () {
                        _pickImageFromCamera();
                      },
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              size: 30,
                            ),
                            Text("Camera")
                          ],
                        ),
                      )),
                ),
                Expanded(
                  child: InkWell(
                      onTap: () {
                        _pickImageFromGallery();
                      },
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.image,
                              size: 30,
                            ),
                            Text("Gallery")
                          ],
                        ),
                      )),
                ),
              ],
            ),
          );
        });
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
