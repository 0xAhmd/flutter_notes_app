import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Function(String)? onChange;
  final TextInputType keyboardType;
  final double? height; // Optional height parameter
  final int maxLines; // Allows setting a custom height
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.onChange,
      this.keyboardType = TextInputType.text, // Defaults to general text input
      this.height,
      required this.maxLines // Allows setting a custom height
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
      child: SizedBox(
        height: height, // Sets the height if provided
        child: TextField(
          maxLines: maxLines,
          onChanged: onChange,
          cursorColor: Colors.blue,
          style: const TextStyle(color: Colors.white),
          keyboardType: keyboardType, // Specifies the keyboard type
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: Colors.blue),
            ),
            labelText: hintText,
            labelStyle: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
