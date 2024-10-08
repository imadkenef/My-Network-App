import 'package:flutter/material.dart';
import '../Shared/themes/colors.dart';
import '../Shared/themes/text_styles.dart';
import '../Shared/widgets/action_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            TextField(
              controller: phoneNumber,
              keyboardType: TextInputType.phone,
              cursorColor: orange,
              style: title1,
              decoration: InputDecoration(
                label: Text("search for contacts", style: TextStyle(color: gray)),
                //hintText: "Enter The Phone Number",
                hintStyle: title1.merge(TextStyle(color: gray)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(color: white, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(
                    color: gray,
                    width: 2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ActionButtonIcpn(
              onClicked: () {
                print(phoneNumber.text);
              },
              textButton: "Search",
              icon: Icons.search,
            )
          ]),
        ),
      ),
    );
  }
}
