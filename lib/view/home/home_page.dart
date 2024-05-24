import 'package:dil_savaslari/view/consts/color.dart';
import 'package:dil_savaslari/view/consts/customCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCard(
                  backgroundColor: Colors.deepOrange,
                  gradientColor: Colors.orange),
              SizedBox(width: 10),
              CustomCard(
                  backgroundColor: Colors.deepPurple,
                  gradientColor: Colors.purple),
            ],
          ),
          SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCard(
                  backgroundColor: Colors.green,
                  gradientColor: Colors.greenAccent),
              SizedBox(width: 10),
              CustomCard(
                  backgroundColor: Colors.lightBlue,
                  gradientColor: Colors.blueAccent),
            ],
          ),
          SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCard(
                  backgroundColor: Colors.pinkAccent,
                  gradientColor: Colors.deepOrangeAccent),
              SizedBox(width: 10),
              CustomCard(
                  backgroundColor: Colors.black, gradientColor: Colors.black87),
            ],
          ),
        ],
      ),
    );
  }
}
