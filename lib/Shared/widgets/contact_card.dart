import 'package:flutter/material.dart';
import 'package:my_network_appn/Shared/themes/colors.dart';
import 'package:my_network_appn/Shared/themes/text_styles.dart';

import '../../Screens/friend_secreen.dart';
import '../Methods/Navifation.dart';

class ContactCard extends StatelessWidget {
  String imgPath;
  String contactName;
  String contatPhoneNum;
  ContactCard(
      {super.key,
      required this.imgPath,
      required this.contactName,
      required this.contatPhoneNum});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goTo(context: context, screen: FriendScreen());
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 38.5,
            backgroundImage: AssetImage(imgPath),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contactName,
                style: title1,
              ),
              Text(
                contatPhoneNum,
                style: title2.merge(TextStyle(color: gray)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
