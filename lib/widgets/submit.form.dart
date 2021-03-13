import 'package:alcohol_or_gas/widgets/calculate_button.widget.dart';
import 'package:alcohol_or_gas/widgets/input.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitForm extends StatelessWidget {
  bool busy;
  Function onSubmit;
  MoneyMaskedTextController gasInputController;
  MoneyMaskedTextController alcoholInputController;

  SubmitForm(
    this.busy,
    this.gasInputController,
    this.alcoholInputController,
    this.onSubmit,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          child: Input(
            label: "Gasolina",
            controller: this.gasInputController,
          ),
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
        ),
        Padding(
          child: Input(
            label: "Álcool",
            controller: this.alcoholInputController,
          ),
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
        ),
        CalculateButton(
          "CALCULAR",
          this.busy,
          false,
          this.onSubmit,
        ),
      ],
    );
  }
}
