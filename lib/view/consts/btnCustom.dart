import 'package:dil_savaslari/view/consts/color.dart';
import 'package:flutter/material.dart';

class BtnCustomWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const BtnCustomWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 330,
        height: 55,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.bgColorBtn,
              AppColors.bgColorBtn2,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(27),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(5, 5),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
