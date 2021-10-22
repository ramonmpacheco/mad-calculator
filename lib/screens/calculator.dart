import 'package:flutter/material.dart';
import 'package:mad_calculator/components/display.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Display(text: "0"),
          Text("Keyboard"),
        ],
      ),
    );
  }
}
