import 'package:dil_savaslari/view/auth/register_page.dart';
import 'package:dil_savaslari/view/consts/btnCustom.dart';
import 'package:dil_savaslari/view/consts/color.dart';
import 'package:dil_savaslari/view/consts/inputCustom.dart';
import 'package:dil_savaslari/view/consts/txtCustom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Fluentify English",
          style: TextStyle(fontSize: 32, fontFamily: 'Jockey'),
        ),
        centerTitle: true,
        backgroundColor: AppColors.bgColor,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                const Text(
                  "Tekrar Hoşgeldiniz !",
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Jockey',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20), // İki yazı arasında boşluk
                const txtCustomWidget(fontSize: 26, text: "Kullanıcı Adı:"),
                const SizedBox(height: 20),
                const InputCustomWidget(isPassword: false),
                const SizedBox(height: 30),
                const txtCustomWidget(text: 'Kullanıcı Parola:', fontSize: 26),
                const SizedBox(height: 20),
                const InputCustomWidget(isPassword: true),
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
                        const SizedBox(width: 40),
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
                ),
                const SizedBox(height: 30),
                BtnCustomWidget(
                  text: 'Giriş',
                  onTap: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Hesabınız yok mu? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterPage(),
                            ),
                          );
                        },
                        child: GestureDetector(
                          onTap: () => Get.to(const RegisterPage()),
                          child: Text(
                            'Kayıt Ol',
                            style: TextStyle(
                                color: AppColors.bgColorBtn,
                                fontSize: 18,
                                decoration: TextDecoration.underline),
                          ),
                        )),
                  ],
                ),
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
