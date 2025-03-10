import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final bool clear;
  final bool backspace;
  final String? hintText;
  final IconData suffixIcon;
  final TextEditingController controller;


  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.suffixIcon,
    required this.controller,
    required this.clear,
    required this.backspace,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      maxLength: 4,
      decoration: inputDecorationText(),
    );
  }

  InputDecoration inputDecorationText() {
    return InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blueAccent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blue, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red),
        ),
        filled: true,
        fillColor: Colors.grey[100],
        suffix: GestureDetector(
          onTap: backspace ? () {
            controller.text = controller.text.substring(
              0,
              controller.text.length - 1,
            );
          } : null,
          onLongPress: clear ? () => controller.clear(): null,
          child: Icon(suffixIcon),
        )
    );
  }
}
