import 'package:flutter/material.dart';
import 'package:dil_savaslari/view/consts/color.dart';
import 'package:dil_savaslari/view/consts/btnCustom.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // appbar'ın gölgesini kaldırır
        title: const Text(
          "Dil Savaşları",
          style: TextStyle(fontSize: 32, fontFamily: 'Jockey'),
        ),
        centerTitle: true,
        backgroundColor: AppColors.bgColor,
      ),
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: AppColors.bgColor,
              width: 312,
              height: 388,
              child: Image.asset('images/welcome_image.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Hemen Aramıza Katıl',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontFamily: 'Jockey',
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Birlikte Dil Öğrenin ve Zafer Kazanın!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Inter',
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            BtnCustomWidget(
              text: 'Giriş Yap!',
              onTap: () {},
            ),
            const SizedBox(height: 20),
            BtnCustomWidget(
              text: 'Kayıt Ol',
              onTap: () {},
            ),
            const SizedBox(height: 15),
            const Text(
              'Sosyal Medya ile Bağlan',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/linkedin.png', width: 30),
                SizedBox(width: 10),
                Image.asset('images/google.png', width: 30),
              ],
            )
          ],
        ),
      ),
    );
  }
}
