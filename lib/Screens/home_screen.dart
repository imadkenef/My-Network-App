import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_network_appn/Screens/mynetwork_screen.dart';
import '../Shared/Methods/Navifation.dart';
import '../Shared/themes/colors.dart';
import '../Shared/themes/text_styles.dart';
import '../Shared/widgets/action_button.dart';
import '../Shared/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        titleSpacing: 10,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottonNavBar(),
      extendBody: true,
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
                label:
                    Text("search for contacts", style: TextStyle(color: gray)),
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
                goTo(context: context, screen: MyNetworkScreen());
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
