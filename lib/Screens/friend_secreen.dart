import 'package:flutter/material.dart';
import 'package:my_network_appn/Shared/themes/colors.dart';
import 'package:my_network_appn/Shared/themes/text_styles.dart';
import 'package:my_network_appn/Shared/widgets/action_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Shared/widgets/back_botton.dart';
import '../Shared/widgets/bottom_nav_bar.dart';
import 'widgets/screens_widget.dart';

class FriendScreen extends StatelessWidget {
  FriendScreen({super.key});

  Map<String, String> socialMedia = {
    'facebook.png': 'https://www.facebook.com',
    'instagram.png': 'https://instagram.com',
    'linkedin.png': 'https://linkedin.com',
    'tiktok.png': 'https://tiktok.com',
    'twitter.png': 'https://x.com',
    'youtube.png': 'https://youtube.com',
    'apple.png': 'https://www.apple.com/',
    'google.png': 'https://google.com',
    'vimeo.png': 'https://vimeo.com',
    'github.png': 'https://github.com',
    'whatsapp.png': 'https://whatsapp.com',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friend'),
        leading: BackBotton()
      ),
      bottomNavigationBar: BottonNavBar(selectedcolor: gray),
      extendBody: true,
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/myimg.jpg'),
                radius: 120,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Imad Eddine Kenef",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              ActionButtonIcpn(
                onClicked: () {
                  showModalBottomSheet<void>(
                    backgroundColor: transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                            color: blue,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: SizedBox(
                          height: 300,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(top: 12, bottom: 16),
                                    width: 75,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        color: gray,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(9))),
                                  ),
                                ),
                                Expanded(
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 16, top: 12),
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextButton(
                                              onPressed: () {},
                                              child: Text('WORK')),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          TextButton(
                                              onPressed: () {},
                                              child: Text('COLLEGE')),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          TextButton(
                                              onPressed: () {},
                                              child: Text('CLUB')),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          TextButton(
                                              onPressed: () {},
                                              child: Text('EVENT')),
                                          SizedBox(
                                            height: 16,
                                          ),

                                          /* Row(
                                            children: [
                                              Icon(Icons.dew_point),
                                              Text(
                                                'Work',
                                                style:
                                                    h5.merge(TextStyle(color: white)),
                                              )
                                            ],
                                          )*/
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                icon: Icons.add,
                textButton: "Add to a group",
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        launchUrl(Uri.parse("tel: +21379535738"));
                      },
                      icon: const Icon(
                        Icons.phone,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                    const Text(
                      "+213 795357938",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )
                  ]),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                padding: const EdgeInsets.all(20),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: socialMedia.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  if (index < socialMedia.length) {
                    return SocialMediaPlatform(
                      iconAssets: socialMedia.keys.elementAt(index),
                      url: socialMedia.values.elementAt(index),
                    );
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
