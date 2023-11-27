import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/utils/Theme/theme_provider.dart';
import 'package:whatsapp/view/splash_screen/splash_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const myapp(),
    ),
  );
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
