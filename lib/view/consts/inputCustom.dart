import 'package:dil_savaslari/view/consts/color.dart';
import 'package:flutter/material.dart';

class InputCustomWidget extends StatefulWidget {
  final bool isPassword;

  const InputCustomWidget({
    super.key,
    required this.isPassword,
  });

  @override
  _InputCustomWidgetState createState() => _InputCustomWidgetState();
}

class _InputCustomWidgetState extends State<InputCustomWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.bgColor, // Arka plan rengi
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextFormField(
          obscureText: widget.isPassword
              ? _obscureText
              : false, // Şifre gizleme/gösterme
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none, // Kenarlık çizgisi olmaması için
            ),
            filled: true,
            fillColor: AppColors.inputColor, // Aynı arka plan rengi
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
