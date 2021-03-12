import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {Key key,
      @required double reamur,
      @required double kelvin,
      @required double fahrenheit})
      : _reamur = reamur,
        _kelvin = kelvin,
        _fahrenheit = fahrenheit,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "Kelvin",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '$_kelvin',
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Fahrenheit",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '$_fahrenheit',
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Reamur",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '$_reamur',
                    style: TextStyle(fontSize: 40),
                  ),
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
