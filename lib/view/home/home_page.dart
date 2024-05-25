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
      appBar: AppBar(
        title: const Text('Dil Savaşları'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.bgColor,
      ),
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
                gradientColor: Colors.orange,
                text: 'A1 Seviyesi Kelime Yarışması',
              ),
              SizedBox(width: 10),
              CustomCard(
                backgroundColor: Colors.deepPurple,
                gradientColor: Colors.purple,
                text: 'A2 Seviyesi Cümle Yarışması',
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCard(
                backgroundColor: Colors.green,
                gradientColor: Colors.greenAccent,
                text: 'B1 Seviyesi Cümle Yarışması',
              ),
              SizedBox(width: 10),
              CustomCard(
                backgroundColor: Colors.lightBlue,
                gradientColor: Color.fromARGB(255, 5, 46, 116),
                text: 'B2 Seviyesi Cümle Yarışması',
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCard(
                backgroundColor: Colors.pinkAccent,
                gradientColor: Colors.deepOrangeAccent,
                text: 'C1 Seviyesi Cümle Yarışması',
              ),
              SizedBox(width: 10),
              CustomCard(
                backgroundColor: Colors.black,
                gradientColor: Colors.black87,
                text: 'Kelimlerim ',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
