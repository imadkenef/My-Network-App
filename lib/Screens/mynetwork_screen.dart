import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_network_appn/Screens/home_screen.dart';
import 'package:my_network_appn/Shared/themes/colors.dart';
import 'package:my_network_appn/Shared/widgets/back_botton.dart';

import '../Shared/Methods/Navifation.dart';
import '../Shared/themes/text_styles.dart';
import '../Shared/widgets/bottom_nav_bar.dart';
import '../Shared/widgets/contact_card.dart';

class MyNetworkScreen extends StatelessWidget {
  const MyNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "My network",
          ),
          leading: BackBotton(),
        ),
        bottomNavigationBar: BottonNavBar(),
        extendBody: true,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                ContactCard(
                  imgPath: "assets/myimg.jpg",
                  contactName: "Imad eddine kenef",
                  contatPhoneNum: "+213 795357938",
                ),
                SizedBox(
                  height: 20,
                ),
                ContactCard(
                  imgPath: "assets/myimg.jpg",
                  contactName: "Imad eddine kenef",
                  contatPhoneNum: "+213 795357938",
                ),
                SizedBox(
                  height: 20,
                ),
                ContactCard(
                  imgPath: "assets/myimg.jpg",
                  contactName: "Imad eddine kenef",
                  contatPhoneNum: "+213 795357938",
                ),
                SizedBox(
                  height: 20,
                ),
                ContactCard(
                  imgPath: "assets/myimg.jpg",
                  contactName: "Imad eddine kenef",
                  contatPhoneNum: "+213 795357938",
                ),
              ],
            ),
          ),
        ));
  }
}
