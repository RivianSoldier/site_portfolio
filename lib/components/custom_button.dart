import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color color;
  final Color textColor;
  final FontWeight fontWeight;
  final double borderRadius;
  final double height;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.color = Colors.white,
    this.textColor = Colors.black54,
    this.fontWeight = FontWeight.w300,
    this.borderRadius = 12.0,
    this.height = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          textStyle: MaterialStateProperty.all(
            TextStyle(
              color: textColor,
              fontWeight: fontWeight,
            ),
          ),
          foregroundColor: MaterialStateProperty.all(
              textColor), // Set the foregroundColor to the textColor value
        ),
        child: child,
      ),
    );
  }
}
