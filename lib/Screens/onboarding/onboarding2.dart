import 'package:flutter/material.dart';
import 'package:my_network_appn/Screens/onboarding/onboarding3.dart';
import 'package:my_network_appn/Shared/Methods/Navifation.dart';

import '../../Shared/themes/text_styles.dart';
import '../../Shared/widgets/action_button.dart';

class OnBoardingTwoScreen extends StatelessWidget {
  const OnBoardingTwoScreen({super.key});

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
                "My network app is the\n best app for\n connecting people 2",
                style: h5,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
          child: ActionButton(
            textButton: "next",
            onClicked: () {
              goTo(context: context, screen: OnBoardingThreeScreen());
            },
          )),
    );
  }
}
