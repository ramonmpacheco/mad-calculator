import 'package:flutter/material.dart';
import 'package:mad_calculator/components/button.dart';
import 'package:mad_calculator/components/button_row.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow(buttons: [
            Button(text: 'AC', doubleSpace: true),
            Button(text: '%'),
            Button(text: '/'),
          ]),
          ButtonRow(buttons: [
            Button(text: '7'),
            Button(text: '8'),
            Button(text: '9'),
            Button(text: 'x'),
          ]),
          ButtonRow(buttons: [
            Button(text: '4'),
            Button(text: '5'),
            Button(text: '6'),
            Button(text: '-'),
          ]),
          ButtonRow(buttons: [
            Button(text: '1'),
            Button(text: '2'),
            Button(text: '3'),
            Button(text: '+'),
          ]),
          ButtonRow(buttons: [
            Button(text: '0', doubleSpace: true),
            Button(text: '.'),
            Button(text: '='),
          ]),
        ],
      ),
    );
  }
}