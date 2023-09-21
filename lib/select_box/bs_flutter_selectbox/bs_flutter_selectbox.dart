import 'package:bs_flutter_selectbox/bs_flutter_selectbox.dart';
import 'package:flutter/material.dart';

class CustomBsflutterSelectBox extends StatefulWidget {
  const CustomBsflutterSelectBox({super.key});

  @override
  State<CustomBsflutterSelectBox> createState() =>
      _CustomBsflutterSelectBoxState();
}

class _CustomBsflutterSelectBoxState extends State<CustomBsflutterSelectBox> {
  dynamic valueBox;
  @override
  Widget build(BuildContext context) {
    return BsSelectBox(
      hintText: 'Pilih salah satu',
      controller: BsSelectBoxController(
        multiple: false,
        options: [
          const BsSelectBoxOption(value: 0, text: Text('0')),
          const BsSelectBoxOption(value: 1, text: Text('1')),
          const BsSelectBoxOption(value: 2, text: Text('2')),
          const BsSelectBoxOption(value: 3, text: Text('3')),
        ],
      ),
      onChange: (value) {
        valueBox = value.getValue();
        print(valueBox);
      },
    );
  }
}
