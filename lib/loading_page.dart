import 'package:dil_savaslari/consts/color.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Row(
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 100),
            child: Text(
              'Dil Savaslari',
              style: TextStyle(
                color: AppColors.bgColorBtn,
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
