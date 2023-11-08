import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:site_portfolio/components/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class WebHero extends StatelessWidget {
  final VoidCallback onPressedContact;

  const WebHero({super.key, required this.onPressedContact});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 48.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Olá, Muito prazer!\nSou o Gabriel Martins.',
                style: TextStyle(fontSize: 44.0, fontWeight: FontWeight.w900),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 16.0),
                child: Text(
                    'Programador desde 2022 e estudante de \nCiência da Computação. \nCom foco em desenvolvimento web e mobile.',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w200)),
              ),
              CustomButton(
                color: Colors.purple[900]!,
                textColor: Colors.white,
                fontWeight: FontWeight.bold,
                borderRadius: 16.0,
                height: 50.0,
                onPressed: onPressedContact,
                child: const Text('ENTRAR EM CONTATO'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () async {
                        final url =
                            Uri.parse('https://github.com/RivianSoldier');
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
            height: 400,
            width: 350,
          )
        ],
      ),
    );
  }
}
