import 'package:flutter/material.dart';
import 'package:my_network_appn/Shared/themes/colors.dart';

class BackBotton extends StatelessWidget {
  const BackBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 40,
                color: orange,
              ));
  }
}