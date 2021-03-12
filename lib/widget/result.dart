import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required double kelvin,
    @required double reamur,
    @required double fahrenheit,
  })  : _kelvin = kelvin,
        _reamur = reamur,
        _fahrenheit = fahrenheit,
        super(key: key);
  final double _kelvin;
  final double _reamur;
  final double _fahrenheit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: [
        Text("Hasil Konversi"),
        Text(
          'Kelvin',
          style: TextStyle(fontSize: 18),
        ),
        Text('$_kelvin',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        Text(
          'Reamur',
          style: TextStyle(fontSize: 18),
        ),
        Text('$_reamur',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        Text(
          'Fahrenheit',
          style: TextStyle(fontSize: 18),
        ),
        Text('$_fahrenheit',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
      ]),
    );
  }
}
