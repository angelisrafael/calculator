import 'package:flutter/material.dart';
import 'button_row.dart';
import 'button.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: const <Widget>[
          ButtonRow(
            buttons: [
              Button.big(text: 'AC',),
              Button(text: '%'),
              Button.operation(text: '/'),
            ],
            ),
          ButtonRow(
            buttons: [
              Button(text: '7'),
              Button(text: '8'),
              Button(text: '9'),
              Button.operation(text: 'x'),
            ],
            ),
            ButtonRow(
            buttons: [
              Button(text: '4'),
              Button(text: '5'),
              Button(text: '6'),
              Button.operation(text: '-'),
            ],
            ),
            ButtonRow(
            buttons: [
              Button(text: '1'),
              Button(text: '2'),
              Button(text: '3'),
              Button.operation(text: '+'),
            ],
            ),
            ButtonRow(
            buttons: [
              Button.big(text: '0',),
              Button(text: ','),
              Button.operation(text: '='),
            ],
            ),
        ],
      ),
    );
  }
}
