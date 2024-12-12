import 'package:flutter/material.dart';
import 'package:my_network_appn/Shared/themes/colors.dart';

class ActionButton extends StatelessWidget {
  String textButton;
  Function() onClicked;
  Color? color;
  double? bottonWidth;
  ActionButton(
      {super.key,
      required this.textButton,
      required this.onClicked,
      this.color,
      this.bottonWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: bottonWidth,
      child: ElevatedButton(
          onPressed: onClicked,
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(color ?? orange),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)))),
          child: Text(
            textButton,
            style: TextStyle(color: white),
          )),
    );
  }
}

class ActionButtonIcpn extends StatelessWidget {
  String textButton;
  IconData icon;
    double? bottonWidth;
  Function() onClicked;
  Color? color;
  ActionButtonIcpn(
      {super.key,
      required this.textButton,
      required this.icon,
      required this.onClicked,
      this.color,
      this.bottonWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: bottonWidth,
      child: ElevatedButton.icon(
        onPressed: onClicked,
        style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(color ?? orange),
            shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
        label: Text(
          textButton,
          style: TextStyle(color: white),
        ),
        icon: Icon(
          icon,
          color: white,
        ),
      ),
    );
  }
}
