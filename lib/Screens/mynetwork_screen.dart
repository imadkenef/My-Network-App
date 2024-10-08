import 'package:flutter/material.dart';
import 'package:my_network_appn/Shared/themes/colors.dart';

import '../Shared/themes/text_styles.dart';

class MyNetworkScreen extends StatelessWidget {
  const MyNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "My network",
            style: TextStyle(color: white),
          ),
          leading: Icon(
            Icons.arrow_back,
            size: 40,
            color: orange,
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 38.5,
                      backgroundImage: AssetImage("assets/myimg.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Imad eddine kenef",
                          style: title1,
                        ),
                        Text(
                          "+213 795357938",
                          style: title2.merge(TextStyle(color: gray)),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 38.5,
                      backgroundImage: AssetImage("assets/myimg.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Imad eddine kenef",
                          style: title1,
                        ),
                        Text(
                          "+213 795357938",
                          style: title2.merge(TextStyle(color: gray)),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 38.5,
                      backgroundImage: AssetImage("assets/myimg.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Imad eddine kenef",
                          style: title1,
                        ),
                        Text(
                          "+213 795357938",
                          style: title2.merge(TextStyle(color: gray)),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 38.5,
                      backgroundImage: AssetImage("assets/myimg.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Imad eddine kenef",
                          style: title1,
                        ),
                        Text(
                          "+213 795357938",
                          style: title2.merge(TextStyle(color: gray)),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
