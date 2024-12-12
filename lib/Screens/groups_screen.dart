import 'package:flutter/material.dart';
import 'package:my_network_appn/Screens/single_group_screen.dart';
import 'package:my_network_appn/Screens/widgets/group_item.dart';
import 'package:my_network_appn/Shared/Methods/Navifation.dart';

import '../Shared/themes/colors.dart';
import '../Shared/themes/text_styles.dart';
import '../Shared/widgets/back_botton.dart';
import '../Shared/widgets/bottom_nav_bar.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goTo(context: context, screen: SingleGroupScreen()),
      child: Scaffold(
        appBar: AppBar(
          leading: BackBotton(),
          title: Text(
            'Groups',
          ),
        ),
        bottomNavigationBar: BottonNavBar(),
        extendBody: true,
        body: GridView.builder(
          padding: const EdgeInsets.all(10),
          physics: BouncingScrollPhysics(),
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            if (index < 6) {
              return GroupItem();
            }
            return null;
          },
        ),
      ),
    );
  }
}
