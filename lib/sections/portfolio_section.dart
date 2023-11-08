import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:site_portfolio/components/title_section.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 48.0),
      child: Container(
        padding: MediaQuery.of(context).size.width > 600
            ? const EdgeInsets.fromLTRB(64.0, 64.0, 64.0, 0.0)
            : const EdgeInsets.fromLTRB(12.0, 64.0, 12.0, 0.0),
        child: Column(
          children: [
            const TitleSection(title1: 'Portfólio', title2: 'de projetos.'),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 64.0, 0.0, 0.0),
              child: Wrap(
                alignment: WrapAlignment.spaceAround,
                spacing: 32.0,
                runSpacing: 16.0,
                children: [
                  Container(
                    width: 320.0,
                    height: 380.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red[900]!, width: 2.0),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
                          child: Image(
                            image: AssetImage('lib/assets/images/bookclub.png'),
                          ),
                        ),
                        const Text('BookClub',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.w600)),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                              'Aplicação em React.js com Express, Sequelize e AWS.',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w200),
                              textAlign: TextAlign.center),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () async {
                                  final url = Uri.parse(
                                      'https://bookclub-nu.vercel.app/');

                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                icon: const FaIcon(FontAwesomeIcons.link),
                                iconSize: 20.0),
                            IconButton(
                              onPressed: () async {
                                final url = Uri.parse(
                                    'https://github.com/RivianSoldier/bookclub-web');
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              icon: const FaIcon(FontAwesomeIcons.github),
                              iconSize: 20.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 320.0,
                    height: 380.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red[900]!, width: 2.0),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 52.0),
                          child: Image(
                            image: AssetImage(
                                'lib/assets/images/maua_presence.jpeg'),
                          ),
                        ),
                        const Text('Mauá Presence',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.w600)),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                              'Aplicação em Node.js com Express, MongoDB, Mongoose e Handlebars.',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w200),
                              textAlign: TextAlign.center),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () async {
                                  final url = Uri.parse(
                                      'https://github.com/Maua-Presence/maua_presence');

                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                icon: const FaIcon(FontAwesomeIcons.link),
                                iconSize: 20.0),
                            IconButton(
                              onPressed: () async {
                                final url = Uri.parse(
                                    'https://github.com/Maua-Presence/maua_presence');
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              icon: const FaIcon(FontAwesomeIcons.github),
                              iconSize: 20.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 320.0,
                    height: 380.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red[900]!, width: 2.0),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 12.0),
                          child: Image(
                            image: AssetImage(
                                'lib/assets/images/supermarket_list.png'),
                          ),
                        ),
                        const Text('Supermarket List',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.w600)),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                              'Aplicação em React.js com Express e MongoDB.',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w200),
                              textAlign: TextAlign.center),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () async {
                                  final url = Uri.parse(
                                      'https://supermarket-list-frontend-rs.vercel.app/');

                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                icon: const FaIcon(FontAwesomeIcons.link),
                                iconSize: 20.0),
                            IconButton(
                              onPressed: () async {
                                final url = Uri.parse(
                                    'https://github.com/RivianSoldier/supermarket-list-frontend');
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              icon: const FaIcon(FontAwesomeIcons.github),
                              iconSize: 20.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
