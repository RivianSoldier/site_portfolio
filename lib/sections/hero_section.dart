import 'package:flutter/material.dart';
import 'package:site_portfolio/breakpoints.dart';
import 'package:site_portfolio/components/mobile_hero.dart';
import 'package:site_portfolio/components/web_hero.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onPressedContact;

  const HeroSection({super.key, required this.onPressedContact});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: constraints.maxWidth > tabletBreakpoint
              ? const EdgeInsets.fromLTRB(0.0, 64.0, 0.0, 0.0)
              : const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: Container(
            padding: MediaQuery.of(context).size.width > 600
                ? const EdgeInsets.fromLTRB(64.0, 32.0, 64.0, 0.0)
                : const EdgeInsets.fromLTRB(12.0, 64.0, 12.0, 0.0),
            child: constraints.maxWidth > tabletBreakpoint
                ? WebHero(onPressedContact: onPressedContact)
                : MobileHero(onPressedMobileContact: onPressedContact),
          ),
        );
      },
    );
  }
}
