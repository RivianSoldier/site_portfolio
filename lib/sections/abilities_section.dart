import 'package:flutter/material.dart';
import 'package:site_portfolio/components/abilities_text.dart';
import 'package:site_portfolio/components/title_section.dart';

class AbilitiesSection extends StatelessWidget {
  const AbilitiesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 48.0),
        child: Container(
          padding: MediaQuery.of(context).size.width > 600
              ? const EdgeInsets.fromLTRB(64.0, 64.0, 64.0, 0.0)
              : const EdgeInsets.fromLTRB(12.0, 64.0, 12.0, 0.0),
          child: Column(children: [
            const TitleSection(title1: 'Habilidades', title2: 'que domino.'),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 64.0, 0.0, 0.0),
              child: Wrap(
                alignment: WrapAlignment.spaceAround,
                spacing: 32.0,
                runSpacing: 16.0,
                children: [
                  Container(
                    width: 320.0,
                    height: 670.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red[900]!, width: 2.0),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
                          child: Image(
                            image:
                                AssetImage('lib/assets/images/habilidades.png'),
                          ),
                        ),
                        Text(
                          'Habilidades Gerais',
                          style: TextStyle(
                              fontSize: 28.0, fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                              'Tecnologias que utilizo no dia a dia da programação',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w200),
                              textAlign: TextAlign.center),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 24.0),
                          child: Column(
                            children: [
                              AbilitiesText(text: '- Git'),
                              AbilitiesText(text: '- GitHub'),
                              AbilitiesText(text: '- VsCode'),
                              AbilitiesText(text: '- Figma'),
                              AbilitiesText(text: '- Scrum'),
                              AbilitiesText(text: '- Kanban'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 320.0,
                    height: 670.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red[900]!, width: 2.0),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
                          child: Image(
                            image: AssetImage('lib/assets/images/frontend.png'),
                          ),
                        ),
                        Text('Front-End',
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.w600)),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                              'Ferramentas utilizadas para criação de interfaces',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w200),
                              textAlign: TextAlign.center),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 24.0),
                          child: Column(
                            children: [
                              AbilitiesText(text: '- Next.js'),
                              AbilitiesText(text: '- React.js'),
                              AbilitiesText(text: '- Tailwind CSS'),
                              AbilitiesText(text: '- JavaScript'),
                              AbilitiesText(text: '- HTML'),
                              AbilitiesText(text: '- CSS'),
                              AbilitiesText(text: '- Axios'),
                              AbilitiesText(text: '- Styled Components'),
                              AbilitiesText(text: '- Chakra UI'),
                              AbilitiesText(text: '- Flutter'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 320.0,
                    height: 670.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red[900]!, width: 2.0),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
                          child: Image(
                            image: AssetImage('lib/assets/images/backend.png'),
                          ),
                        ),
                        Text('Back-End',
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.w600)),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                              'Ferramentas utilizadas para criação de APIs e controle de banco de dados',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w200),
                              textAlign: TextAlign.center),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 24.0),
                          child: Column(
                            children: [
                              AbilitiesText(text: '- JavaScript'),
                              AbilitiesText(text: '- Node.js'),
                              AbilitiesText(text: '- MySQL'),
                              AbilitiesText(text: '- Express.js'),
                              AbilitiesText(text: '- JWT'),
                              AbilitiesText(text: '- PostgreSQL'),
                              AbilitiesText(text: '- MongoDB'),
                              AbilitiesText(text: '- Mongoose'),
                              AbilitiesText(text: '- MongoDB Atlas'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
