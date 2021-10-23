import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final doubleSpace;
  final Color color;

  const Button(
      {Key? key,
      required this.text,
      this.doubleSpace = false,
      this.color = DEFAULT})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: doubleSpace ? 2 : 1,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        style: ElevatedButton.styleFrom(primary: this.color),
      ),
    );
  }
}
