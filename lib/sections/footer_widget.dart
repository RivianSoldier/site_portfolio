import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:site_portfolio/components/custom_icon_button.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      height: 70.0,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Gabriel Martins',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconButton(
                  link: 'https://github.com/RivianSoldier',
                  customIcon: FontAwesomeIcons.github,
                  iconSize: 32.0),
              CustomIconButton(
                  link:
                      'https://www.linkedin.com/in/gabriel-martins-da-silva-189100235',
                  customIcon: FontAwesomeIcons.linkedin,
                  iconSize: 32.0),
            ],
          ),
        ],
      ),
    );
  }
}
