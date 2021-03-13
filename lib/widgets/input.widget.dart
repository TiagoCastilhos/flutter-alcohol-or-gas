import 'package:alcohol_or_gas/styles/text.style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  String label;
  MoneyMaskedTextController controller;

  Input({
    @required this.label,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            this.label,
            style: createDefaultTextStyle(35),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: this.controller,
            style: createDefaultTextStyle(45),
          ),
        ),
        SizedBox(
          width: 50,
        ),
      ],
    );
  }
}
