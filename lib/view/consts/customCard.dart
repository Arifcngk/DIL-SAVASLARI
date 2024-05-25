import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color backgroundColor;
  final Color gradientColor;
  final String text;

  const CustomCard({
    super.key,
    required this.backgroundColor,
    required this.gradientColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    double width = 170;
    return ClipRRect(
      borderRadius: BorderRadius.circular(25), // Same border radius
      child: Container(
        width: width,
        height: 182,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            stops: const [0, 0.9],
            colors: [
              backgroundColor,
              gradientColor,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'Jomhuria',
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Positioned(
              bottom: -width / 2,
              child: CircleAvatar(
                radius: (width / 1.60) - 2,
                backgroundColor: backgroundColor.withOpacity(0.25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
