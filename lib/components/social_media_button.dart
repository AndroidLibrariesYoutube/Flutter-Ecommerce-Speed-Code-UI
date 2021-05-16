import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SocialMediaButton extends StatelessWidget {
  final String image;

  const SocialMediaButton({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      width: 52.0,
      height: 52.0,
      child: Image(
        image: AssetImage(image),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
  }
}
