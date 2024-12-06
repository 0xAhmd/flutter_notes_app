import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_botton.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 310,
        decoration: BoxDecoration(
          color: const Color(0xFF0b121e),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              hintText: 'Title',
              maxLines: 1,
            ),
            const CustomTextField(
              maxLines: 4,
              hintText: 'Content',
            ),
            CustomButton(
                title: 'Submit',
                height: 50,
                color: Colors.blue,
                width: MediaQuery.of(context).size.width,
                onTap: () {})
          ],
        ));
  }
}
