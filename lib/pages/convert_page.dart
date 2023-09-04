import 'package:flutter/material.dart';
import 'package:kuliah/components/convert_button.dart';
import 'package:kuliah/components/convert_dropdown.dart';
import 'package:kuliah/components/convert_input.dart';

class ConvertPage extends StatefulWidget {
  const ConvertPage({super.key});

  @override
  State<ConvertPage> createState() => _ConvertPageState();
}

class _ConvertPageState extends State<ConvertPage> {
  final controller = TextEditingController();

  String? target;
  double? result;
  List<String> histories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Konverter Suhu"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ConvertInput(
              hint: 'Masukkan Suhu Dalam Celcius',
              controller: controller,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            ConvertDropdown(
              value: target,
              items: const ['reamur', 'kelvin'],
              onChanged: (value) {
                setState(() => target = value);
              },
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  result != null ? const Text('Hasil') : Container(),
                  const SizedBox(height: 8),
                  result != null ? Text(result.toString()) : Container(),
                  const SizedBox(height: 8),
                  ConvertButton(
                    title: 'Konversi',
                    onTap: () {
                      var input = double.tryParse(controller.text);
                      if (target == 'reamur' && input != null) {
                        var temp = (input * 4) / 5;
                        setState(() {
                          result = temp;
                          histories.add('Reamur : $temp');
                        });
                      } else if (target == 'kelvin' && input != null) {
                        var temp = input + 273.15;
                        setState(() {
                          result = temp;
                          histories.add('Kelvin : $temp');
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text('Riwayat'),
            const SizedBox(height: 8),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: histories.map((e) => Text(e)).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
