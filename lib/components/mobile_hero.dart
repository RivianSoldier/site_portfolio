import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:site_portfolio/components/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileHero extends StatelessWidget {
  final VoidCallback onPressedMobileContact;

  const MobileHero({super.key, required this.onPressedMobileContact});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Olá, Muito prazer! Sou o Gabriel Martins.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 16.0),
              child: Text(
                  'Programador desde 2022 e estudante de Ciência da Computação. Com foco em desenvolvimento web e mobile.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w200,
                  )),
            ),
            CustomButton(
              color: Colors.purple[900]!,
              textColor: Colors.white,
              fontWeight: FontWeight.bold,
              borderRadius: 16.0,
              height: 50.0,
              onPressed: onPressedMobileContact,
              child: const Text('ENTRAR EM CONTATO'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () async {
                      final url = Uri.parse('https://github.com/RivianSoldier');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: const FaIcon(FontAwesomeIcons.github),
                    iconSize: 32.0,
                  ),
                  IconButton(
                      onPressed: () async {
                        final url = Uri.parse(
                            'https://www.linkedin.com/in/gabriel-martins-da-silva-189100235');

                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      icon: const FaIcon(FontAwesomeIcons.linkedin),
                      iconSize: 32.0),
                ],
              ),
            ),
          ],
        ),
        // image
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.purple[900]!, width: 3.0),
            borderRadius: BorderRadius.circular(24.0),
            image: const DecorationImage(
                image: AssetImage('lib/assets/images/perfil.jpg'),
                fit: BoxFit.cover),
          ),
          height: 360,
          width: 320,
        )
      ],
    );
  }
}
