import 'package:alcohol_or_gas/styles/text.style.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final double margin = 80;
  bool busy = false;
  bool invertCalculateButtonColors = false;
  Function onPressed;
  String text;

  CalculateButton(
      this.text, this.busy, this.invertCalculateButtonColors, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            margin: EdgeInsets.only(top: this.margin),
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: EdgeInsets.all(this.margin),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: this.invertCalculateButtonColors
                  ? Theme.of(context).primaryColorDark.withOpacity(0.8)
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(
                60,
              ),
            ),
            child: TextButton(
              onPressed: this.onPressed,
              child: Text(
                this.text,
                style: createDefaultTextStyle(
                  35,
                  color: this.invertCalculateButtonColors
                      ? Colors.white
                      : Theme.of(context).primaryColorDark,
                ),
              ),
            ),
          );
  }
}
