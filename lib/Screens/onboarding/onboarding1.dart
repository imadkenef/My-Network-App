import 'package:flutter/material.dart';
import 'package:my_network_appn/Shared/themes/colors.dart';
import 'package:my_network_appn/Shared/themes/text_styles.dart';

class OnBoardingOneScreen extends StatelessWidget {
  const OnBoardingOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(64),
                  child: Image(image: AssetImage("assets/network.jpeg"))),
              SizedBox(
                height: 47,
              ),
              Text(
                "My network app is the\n best app for\n connecting people",
                style: h5,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(orange),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)))),
          child: Text(
            "Next",
            style: TextStyle(color: white),
          ),
        ),
      ),
    );
  }
}
