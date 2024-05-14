import 'package:dil_savaslari/consts/color.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // appbar'ın gölgesini kaldırır
        title: const Text(
          "Dil Savaşları",
          style: TextStyle(fontSize: 26),
        ),
        centerTitle: true,
        backgroundColor: AppColors.bgColor,
      ),
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Text("Welcome Texr"),
      ),
    );
  }
}
