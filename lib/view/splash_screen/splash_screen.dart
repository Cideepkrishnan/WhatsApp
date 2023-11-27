import 'package:flutter/material.dart';
import 'package:whatsapp/utils/Image_constant/image_constant.dart';
import 'package:whatsapp/view/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3))
        .then((value) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
                height: 70,
                width: 70,
                child: Image.asset("assets/image/Digital_Glyph_Green.png")
                //  Image.asset(
                //   image.logo,
                //   fit: BoxFit.cover,
                // ),
                ),
          ),
        ],
      ),
    );
  }
}
