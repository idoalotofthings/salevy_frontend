import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Icon icon;
  final double iconTextPadding;

  const IconText(
      {required this.text,
      required this.style,
      required this.icon,
      this.iconTextPadding = 8.0,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(iconTextPadding),
          child: icon,
        ),
        Text(
          text,
          style: style,
        )
      ],
    );
  }
}
