import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title1;
  final String title2;

  const TitleSection({super.key, required this.title1, required this.title2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title1,
          style: TextStyle(fontSize: 44.0, fontWeight: FontWeight.w900),
        ),
        Text(
          title2,
          style: TextStyle(
              fontSize: 44.0,
              fontWeight: FontWeight.w900,
              color: Colors.purple[900]!),
        ),
      ],
    );
  }
}
