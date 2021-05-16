import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_audio_eco_video/constants.dart';

class TextFieldPrimary extends StatelessWidget {
  final String hint;
  final String icon;

  const TextFieldPrimary({this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          prefixIcon: Image.asset(icon),
          fillColor: Colors.white,
          hintText: hint,
          hintStyle: TextStyle(color: Constants.kGrey),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
          )),
    );
  }
}
