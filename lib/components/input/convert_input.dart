import 'package:flutter/material.dart';
import 'package:kuliah/themes/generate_theme.dart';

class ConvertInput extends StatelessWidget {
  const ConvertInput({
    super.key,
    required this.hint,
    required this.controller,
    this.keyboardType = TextInputType.text,
  });

  final String hint;
  final TextEditingController controller;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: GenerateTheme.inputDecoration(hint),
      keyboardType: keyboardType,
    );
  }
}
