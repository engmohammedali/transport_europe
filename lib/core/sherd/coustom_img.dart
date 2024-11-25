import 'package:flutter/material.dart';

class CoustomImg extends StatelessWidget {
  final String urlImg;
  final double height;
  final double width;

  const CoustomImg(
      {super.key,
      required this.urlImg,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        urlImg,
        height: height,
        width: width,
        // fit: BoxFit.cover,
      ),
    );
  }
}
