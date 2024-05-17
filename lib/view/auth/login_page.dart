import 'package:dil_savaslari/view/consts/color.dart';
import 'package:dil_savaslari/view/consts/inputCustom.dart';
import 'package:dil_savaslari/view/consts/txtCustom.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Dil Savaşları",
          style: TextStyle(fontSize: 32, fontFamily: 'Jockey'),
        ),
        centerTitle: true,
        backgroundColor: AppColors.bgColor,
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text(
                  "Tekrar Hoşgeldiniz !",
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Jockey',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20), // İki yazı arasında boşluk
                txtCustomWidget(fontSize: 26, text: "Kullanıcı Adı:"),
                SizedBox(height: 20),
                InputCustomWidget(isPassword: false),
                SizedBox(height: 30),
                txtCustomWidget(text: 'Kullanıcı Parola:', fontSize: 26),
                SizedBox(height: 20),
                InputCustomWidget(isPassword: true),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                          checkColor: Colors.white,
                          activeColor: Colors.blue,
                        ),
                        const Text(
                          "Beni Hatırla",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Şifremi Unuttum",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        )
                      ],
                    )
                  ],
                )
                //Burada beni hatırla ve şifremi unuttum kısımları olacak
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              widthFactor: 1.0,
              heightFactor: 0.40, // Ekranın 4'te 1'ini kaplar
              child: Image.asset(
                'images/login_image.png',
                fit: BoxFit.cover, // Resmin alanı tamamen kaplamasını sağlar
              ),
            ),
          ),
        ],
      ),
    );
  }
}
