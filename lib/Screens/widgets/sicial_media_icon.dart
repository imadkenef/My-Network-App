import 'package:flutter/material.dart';
import 'package:my_network_appn/Shared/themes/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaPlatform extends StatefulWidget {
  String iconAssets;
  String url;
  SocialMediaPlatform({super.key, required this.iconAssets, required this.url});

  @override
  State<SocialMediaPlatform> createState() => _SocialMediaIconState();
}

class _SocialMediaIconState extends State<SocialMediaPlatform> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: () {
          launchUrl(Uri.parse(widget.url),
              mode: LaunchMode.externalApplication);
        },
        child: CircleAvatar(
          backgroundColor: transparent,
          backgroundImage: AssetImage('assets/${widget.iconAssets}'),
          radius: 40,
        ),
      ),
    );
  }
}
