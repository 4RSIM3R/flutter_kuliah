import 'package:flutter/material.dart';

class GenerateTheme {
  static InputDecoration inputDecoration(String hint) => InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        fillColor: Colors.white,
        filled: true,
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey[300]!, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey[300]!, width: 1),
        ),
      );

  static List<Widget> generateDots(int length, int index) {
    List<Widget> widgets = [];

    for (var i = 0; i < length; i++) {
      widgets.add(
        AnimatedContainer(
          margin: const EdgeInsets.only(right: 4),
          height: (index == i)
              ? 12
              : index + 1 == i
                  ? 8
                  : 4,
          width: (index == i)
              ? 12
              : index + 1 == i
                  ? 8
                  : 4,
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            color: index == i ? Colors.white : Colors.grey[300]!,
            borderRadius: BorderRadius.circular(12),
            border: index == i ? Border.all(color: Colors.red, width: 2) : const Border.fromBorderSide(BorderSide.none),
          ),
        ),
      );
    }

    return widgets;
  }
}
