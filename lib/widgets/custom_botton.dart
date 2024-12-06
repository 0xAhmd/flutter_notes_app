import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.isLoading = false,
      required this.title,
      required this.height,
      required this.color,
      required this.width,
      required this.onTap});
  final String title;
  final double height;
  final double width;
  final Color color;
  final VoidCallback onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
            alignment: Alignment.center,
            width: width,
            height: height,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(8)),
            child: isLoading
                ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ))
                : Text(title,
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))),
      ),
    );
  }
}
