import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key,
      required this.icon,
      required this.height,
      required this.width});

  final Icon icon;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.white.withOpacity(0.1)),
      child: Center(
          child: Icon(
        size: 28,
        icon.icon,
        color: Colors.white,
      )),
    );
  }
}
