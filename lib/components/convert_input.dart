import 'package:flutter/material.dart';
import 'package:kuliah/themes/generate_theme.dart';

class ConvertInput extends StatelessWidget {
  const ConvertInput({
    super.key,
    required this.hint,
    required this.controller,
  });

  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: GenerateTheme.inputDecoration(hint),
    );
  }
}
