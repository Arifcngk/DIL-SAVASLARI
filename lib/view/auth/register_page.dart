import 'package:dil_savaslari/view/consts/color.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Fluentify English",
          style: TextStyle(fontSize: 32, fontFamily: 'Jockey'),
        ),
        centerTitle: true,
        backgroundColor: AppColors.bgColor,
      ),
    );
  }
}
