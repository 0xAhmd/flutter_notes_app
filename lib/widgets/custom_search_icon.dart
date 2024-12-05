import 'package:flutter/material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.white.withOpacity(0.1)),
      child: const Center(
        child: Icon(
          Icons.search,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}
