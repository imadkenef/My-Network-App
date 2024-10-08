import 'package:flutter/material.dart';
import 'package:my_network_appn/Shared/themes/colors.dart';

class ActionButton extends StatelessWidget {
  String textButton;
  Function() onClicked;

  ActionButton({super.key, required this.textButton, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onClicked,
        style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(orange),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)))),
        child: Text(
          textButton,
          style: TextStyle(color: white),
        ));
  }
}

class ActionButtonIcpn extends StatelessWidget {
  String textButton;
  IconData icon;
  Function() onClicked;
  ActionButtonIcpn(
      {super.key,
      required this.textButton,
      required this.icon,
      required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onClicked,
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(orange),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      label: Text(textButton),
      icon: Icon(icon),
    );
  }
}
