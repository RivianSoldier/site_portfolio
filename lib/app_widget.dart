import 'package:flutter/material.dart';
import 'sections/contact_section.dart';
import 'sections/app_bar_widget.dart';
import 'sections/footer_widget.dart';
import 'sections/portfolio_section.dart';
import 'sections/hero_section.dart';
import 'sections/abilities_section.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final abilitiesSectionKey = GlobalKey();
  final portfolioSectionKey = GlobalKey();
  final footerSectionKey = GlobalKey();
  final scrollController = ScrollController();

  void scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      final box = context.findRenderObject() as RenderBox;
      final position = box.localToGlobal(Offset.zero).dy;
      const offset = 100.0;
      scrollController.animateTo(
        position + offset,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  void scrollToAbilitiesSection() {
    scrollTo(abilitiesSectionKey);
  }

  void scrollToPortfolioSection() {
    scrollTo(portfolioSectionKey);
  }

  void scrollToContactSection() {
    scrollTo(footerSectionKey);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              AppBarWidget(
                onPressedAbilities: scrollToAbilitiesSection,
                onPressedPortfolio: scrollToPortfolioSection,
                onPressedContact: scrollToContactSection,
              ),
              HeroSection(onPressedContact: scrollToContactSection),
              AbilitiesSection(key: abilitiesSectionKey),
              PortfolioSection(key: portfolioSectionKey),
              const ContactSection(),
              FooterWidget(key: footerSectionKey),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
