import 'package:flutter/material.dart';

class ConvertDropdown extends StatelessWidget {
  const ConvertDropdown({
    super.key,
    required this.items,
    this.value,
    required this.onChanged,
  });

  final List items;
  final dynamic value;
  final Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: value,
      elevation: 16,
      onChanged: onChanged,
      items: items.map<DropdownMenuItem<String>>((dynamic value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value.toString(),
          ),
        );
      }).toList(),
    );
  }
}
