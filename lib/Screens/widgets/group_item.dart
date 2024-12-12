import 'package:flutter/material.dart';
import 'package:my_network_appn/Shared/themes/text_styles.dart';

import '../../Shared/themes/colors.dart';

class GroupItem extends StatelessWidget {
  const GroupItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(gray, BlendMode.darken),
                  image: AssetImage('assets/network.jpeg'),
                  fit: BoxFit.cover),
              color: orange,
              borderRadius: BorderRadius.circular(39)),
        ),
        Center(
          child: Text(
            'WORK',
            style: h3Bold,
          ),
        ),
      ],
    );
  }
}
