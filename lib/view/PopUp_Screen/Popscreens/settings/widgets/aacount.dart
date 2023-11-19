import 'package:flutter/material.dart';
import 'package:whatsapp/utils/database/database.dart';

class account extends StatelessWidget {
  const account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
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
                title: Text(screns.accountscreen[index]["AccountItems"]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
