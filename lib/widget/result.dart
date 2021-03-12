import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key key, @required double reamur, @required double kelvin, @required double fahrenheit})
      : _reamur = reamur, _kelvin =kelvin, _fahrenheit = fahrenheit,
        super(key: key);

  final double _reamur;
  final double _kelvin;
  final double _fahrenheit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text("Reamur"),
                  Text('$_reamur'),
                ],
              ),
              Column(
                children: [
                  Text("Reamur"),
                  Text('$_kelvin'),
                ],
              ),
              Column(
                children: [
                  Text("Reamur"),
                  Text('$_fahrenheit'),
                ],
              ),
            ],
          ),
          
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
        ],
      ),
    );
  }
}
