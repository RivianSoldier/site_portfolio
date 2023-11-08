import 'package:flutter/material.dart';
import 'package:site_portfolio/components/mobile_app_bar.dart';
import 'package:site_portfolio/components/web_app_bar.dart';

class AppBarWidget extends StatelessWidget {
  final VoidCallback onPressedAbilities;
  final VoidCallback onPressedPortfolio;
  final VoidCallback onPressedContact;

  const AppBarWidget({
    Key? key,
    required this.onPressedAbilities,
    required this.onPressedPortfolio,
    required this.onPressedContact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context).size.width > 600
          ? const EdgeInsets.fromLTRB(64.0, 16.0, 64.0, 0.0)
          : const EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 0.0),
      child: MediaQuery.of(context).size.width > 600
          ? WebAppBar(
              onPressedAbilities: onPressedAbilities,
              onPressedPortfolio: onPressedPortfolio,
              onPressedContact: onPressedContact,
            )
          : MobileAppBar(
              onPressedAbilities: onPressedAbilities,
              onPressedPortfolio: onPressedPortfolio,
              onPressedContact: onPressedContact,
            ),
    );
  }
}
