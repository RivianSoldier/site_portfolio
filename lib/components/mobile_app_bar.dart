import 'package:flutter/material.dart';
import 'package:site_portfolio/components/custom_button.dart';

class MobileAppBar extends StatelessWidget {
  final VoidCallback onPressedAbilities;
  final VoidCallback onPressedPortfolio;
  final VoidCallback onPressedContact;

  const MobileAppBar(
      {super.key,
      required this.onPressedAbilities,
      required this.onPressedPortfolio,
      required this.onPressedContact});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Gabriel Martins',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24.0),
            ),
            CustomButton(
              color: Colors.purple[900]!,
              textColor: Colors.white,
              fontWeight: FontWeight.bold,
              borderRadius: 16.0,
              height: 50.0,
              onPressed: onPressedContact,
              child: const Text('CONTATO'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              onPressed: onPressedAbilities,
              child: const Text('Habilidades'),
            ),
            CustomButton(
              onPressed: onPressedPortfolio,
              child: const Text('Portfólio'),
            ),
          ],
        ),
      ],
    );
  }
}
