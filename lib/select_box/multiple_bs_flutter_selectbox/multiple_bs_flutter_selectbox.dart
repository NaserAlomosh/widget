import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';

class CustomMultipleBsflutterSelectBox extends StatelessWidget {
  const CustomMultipleBsflutterSelectBox({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> data = [];
    return BsSelectBox(
      hintText: 'Pilih salah satu',
      controller: BsSelectBoxController(
        multiple: true,
        options: [
          const BsSelectBoxOption(value: 0, text: Text('0')),
          const BsSelectBoxOption(value: 1, text: Text('1')),
          const BsSelectBoxOption(value: 2, text: Text('2')),
          const BsSelectBoxOption(value: 3, text: Text('3')),
        ],
      ),
      onChange: (value) {
        dynamic a = value.getValue();
        if (data.contains(a)) {
          data.remove(a);
        } else {
          data.add(a);
        }
      },
    );
  }
}
