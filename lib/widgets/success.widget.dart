import 'package:alcohol_or_gas/styles/text.style.dart';
import 'package:alcohol_or_gas/widgets/calculate_button.widget.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  String result;
  Function reset;

  Success(this.result, this.reset);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            this.result,
            style: createDefaultTextStyle(
              40,
              color: Theme.of(context).primaryColorDark,
            ),
            textAlign: TextAlign.center,
          ),
          CalculateButton("CALCULAR NOVAMENTE", false, true, this.reset),
        ],
      ),
    );
  }
}
