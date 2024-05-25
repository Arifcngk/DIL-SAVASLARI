import 'package:dil_savaslari/view/consts/color.dart';
import 'package:dil_savaslari/view/auth/welcome_page.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 3 saniye loading ekranı gösterildikten sonra welcome sayfasına yönlendirme yapılacak
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const WelcomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  'images/loading.png',
                  width: 279,
                  height: 300,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Yükleniyor...',
              style: TextStyle(
                  color: Colors.white, fontSize: 48, fontFamily: 'Jomhuria'),
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
