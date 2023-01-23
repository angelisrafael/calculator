import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 178, 13, 1);
  static const CLICK = Colors.white;

  final String text;
  final bool big;
  final Color color;

  const Button(
      {Key? key, required this.text, this.big = false, this.color = DEFAULT})
      : super(key: key);

      const Button.big(
      {super.key, required this.text, this.big = true, this.color = DEFAULT});

      const Button.operation(
      {super.key, required this.text, this.big = false, this.color = OPERATION});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color, foregroundColor: CLICK),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
