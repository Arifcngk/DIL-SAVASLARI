import 'package:flutter/material.dart';

class txtCustomWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  const txtCustomWidget({
    super.key,
    required this.text,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontFamily: 'Jockey',
      ),
    );
  }
}
