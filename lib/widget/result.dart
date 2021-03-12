import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key key,
  @required double kelvin,
    @required double reamour,
    @required double fahrenheit,
   })
      : _kelvin = kelvin, _reamour = reamour, _fahrenheit = fahrenheit, super(key: key);

  final double _kelvin;
  final double _reamour;
  final double _fahrenheit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text("Hasil Konversi"),
          Column(
          children: <Widget>[
           Text("Kelvin",
           style: TextStyle(
             fontSize: 21, color: Colors.grey[700]),),
           Text(
             '$_kelvin',
             style: TextStyle(
             fontSize: 30),),
          ],
        ),
        Column(
          children: <Widget>[
          Text("Reamur",
          style: TextStyle(
             fontSize: 21, color: Colors.grey[700]),),
          Text(
            '$_reamour',
            style: TextStyle(
             fontSize: 30),
          )
          ],
        ),
        Column(
          children: <Widget>[
          Text("Fahrenheit",
          style: TextStyle(
             fontSize: 21, color: Colors.grey[700]),),
          Text(
            '$_fahrenheit',
            style: TextStyle(
             fontSize: 30),
          )
          ],
        ),
        ],
      ),
    );
  }
}
