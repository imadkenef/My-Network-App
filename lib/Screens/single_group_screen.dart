import 'package:flutter/material.dart';
import 'package:my_network_appn/Shared/themes/text_styles.dart';

import '../Shared/themes/colors.dart';
import '../Shared/widgets/back_botton.dart';
import '../Shared/widgets/bottom_nav_bar.dart';
import '../Shared/widgets/contact_card.dart';

class SingleGroupScreen extends StatelessWidget {
  const SingleGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackBotton(),
          title: Text(
            'Work',
          ),
        ),
        bottomNavigationBar: BottonNavBar(selectedcolor: gray),
        extendBody: true,
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image(
                    image: AssetImage('assets/network.jpeg'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Group Members',
                  style: h3Bold,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
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
              ],
            ),
          ),
        ));
  }
}
