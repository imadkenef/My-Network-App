import 'package:flutter/material.dart';

void goTo({required BuildContext context ,required Widget screen}){
  Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => screen),
                );
}