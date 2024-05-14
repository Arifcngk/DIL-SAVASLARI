import 'package:dil_savaslari/loading_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dil Savaslari',
      debugShowCheckedModeBanner: false,
      home: LoadingPage(),
    );
  }
}
