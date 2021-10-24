import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final doubleSpace;
  final Color color;
  final void Function(String) callBack;

  const Button({
    Key? key,
    required this.text,
    this.doubleSpace = false,
    this.color = DEFAULT,
    required this.callBack,
  }) : super(key: key);

  const Button.doubleSpace({
    Key? key,
    required this.text,
    this.doubleSpace = true,
    this.color = DEFAULT,
    required this.callBack,
  }) : super(key: key);

  const Button.operation({
    Key? key,
    required this.text,
    this.doubleSpace = false,
    this.color = OPERATION,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: doubleSpace ? 2 : 1,
      child: ElevatedButton(
        onPressed: () => callBack(text),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 24,
          ),
        ),
        style: ElevatedButton.styleFrom(primary: this.color),
      ),
    );
  }
}
