import 'package:flutter/material.dart';
import 'package:site_portfolio/components/title_section.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 48.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TitleSection(title1: 'Como posso', title2: 'te ajudar?'),
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 24.0),
            child: Text(
              'Estou à disposição para ajudar o seu projeto ou sua empresa.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w200),
            ),
          ),
          InkWell(
            onTap: () {
              Uri mail = Uri(scheme: 'mailto', path: 'bilzims.sg@gmail.com');
              launchUrl(mail);
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.mail,
                  size: 24.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'bilzims.sg@gmail.com',
                    style: TextStyle(
                        decoration: TextDecoration.underline, fontSize: 16.0),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Uri phone = Uri(scheme: 'tel', path: '(11)94246-8950');
              launchUrl(phone);
            },
            child: const Padding(
              padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.phone,
                    size: 24.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      '(11)94246-8950',
                      style: TextStyle(
                          decoration: TextDecoration.underline, fontSize: 16.0),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
