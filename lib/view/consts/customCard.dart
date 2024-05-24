import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color backgroundColor;
  final Color gradientColor;

  const CustomCard({
    super.key,
    required this.backgroundColor,
    required this.gradientColor,
  });

  @override
  Widget build(BuildContext context) {
    double width = 170;
    return Container(
      width: width,
      height: 182,
      decoration: BoxDecoration(
        color: backgroundColor,
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
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Your Text Here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
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
    );
  }
}
