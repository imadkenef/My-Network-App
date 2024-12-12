import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_network_appn/Screens/groups_screen.dart';
import 'package:my_network_appn/Screens/profile_screen.dart';

import '../../Screens/home_screen.dart';
import '../../Screens/mynetwork_screen.dart';
import '../Methods/Navifation.dart';
import '../themes/colors.dart';

class BottonNavBar extends StatelessWidget {
  static int cuurentindex = 0;
  Color? selectedcolor;
  BottonNavBar({
    super.key,
    this.selectedcolor
    /*required this.cuurentIndex*/
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.house), label: ''),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.globe), label: ''),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userGroup), label: ''),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: '')
      ],
      onTap: (value) {
        cuurentindex = value;
        if (value == 0) {
        } else if (value == 1) {
          goTo(context: context, screen: MyNetworkScreen());
        } else if (value == 2) {
          goTo(context: context, screen: GroupsScreen());
        } else if (value == 3) {
          goTo(context: context, screen: ProfileScreen());
        }
      },
      backgroundColor: bottomNacBarColor,
      selectedItemColor: selectedcolor ?? orange ,
      currentIndex: cuurentindex == 0 ? 0 : cuurentindex,
      type: BottomNavigationBarType.fixed,
    );
  }
}
