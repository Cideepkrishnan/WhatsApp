import 'package:flutter/material.dart';
import 'package:whatsapp/utils/color_constant/color_constant.dart';
import 'package:whatsapp/utils/database/database.dart';

class account extends StatelessWidget {
  const account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          "Account",
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: screns.accountscreen.length,
              itemBuilder: (context, index) => ListTile(
                leading: screns.accountscreen[index]["AccountIcon"],
                title: Text(
                  screns.accountscreen[index]["AccountItems"],
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
