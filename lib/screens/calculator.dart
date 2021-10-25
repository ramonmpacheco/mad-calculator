import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mad_calculator/components/display.dart';
import 'package:mad_calculator/components/keyboard.dart';
import 'package:mad_calculator/models/engine.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Engine engine = Engine();

  _onPressed(String command) {
    setState(() {
      engine.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      home: Column(
        children: [
          Display(text: engine.value),
          Keyboard(
            callBack: _onPressed,
          ),
        ],
      ),
    );
  }
}
