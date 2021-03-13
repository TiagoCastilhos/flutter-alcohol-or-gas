import 'package:alcohol_or_gas/widgets/logo.widget.dart';
import 'package:alcohol_or_gas/widgets/submit.form.dart';
import 'package:alcohol_or_gas/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  ThemeData themeData;

  HomePage(this.themeData);

  @override
  _HomePageState createState() => _HomePageState(this.themeData);
}

class _HomePageState extends State<HomePage> {
  ThemeData themeData;
  Color color;
  bool completed = false;
  bool busy = false;
  String resultText;
  var gasInputController = new MoneyMaskedTextController(leftSymbol: "R\$ ");
  var alcoholInputController =
      new MoneyMaskedTextController(leftSymbol: "R\$ ");

  _HomePageState(this.themeData) {
    this.color = themeData.primaryColor;
  }

  Future calculate() async {
    setState(() {
      this.completed = false;
      this.busy = true;
      this.color = themeData.primaryColorDark;
    });

    var alcoholValue = this.alcoholInputController.numberValue;
    var gasValue = this.gasInputController.numberValue;

    var result = alcoholValue / gasValue;

    var text = result >= 0.7
        ? "Compensa utilizar Gasolina"
        : "Compensa utilizar Álcool";

    return Future.delayed(
        Duration(seconds: 3),
        () => {
              setState(() {
                this.completed = true;
                this.busy = false;
                this.resultText = text;
                this.color = themeData.primaryColor;
              }),
            });
  }

  void calculateAgain() {
    setState(() {
      this.gasInputController.updateValue(0);
      this.alcoholInputController.updateValue(0);
      this.completed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(
          milliseconds: 1200,
        ),
        color: this.color,
        child: ListView(
          children: <Widget>[
            Logo(),
            this.completed
                ? Success(
                    this.resultText,
                    calculateAgain,
                  )
                : SubmitForm(
                    this.busy,
                    this.gasInputController,
                    this.alcoholInputController,
                    this.calculate,
                  ),
          ],
        ),
      ),
    );
  }
}
