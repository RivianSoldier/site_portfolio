import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomIconButton extends StatelessWidget {
  final String link;
  final IconData customIcon;
  final double iconSize;

  const CustomIconButton(
      {super.key,
      required this.link,
      required this.customIcon,
      required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final url = Uri.parse(link);
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      icon: FaIcon(customIcon),
      iconSize: iconSize,
    );
  }
}
