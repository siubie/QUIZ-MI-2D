import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required double kelvin,
    @required double reamor,
  }) : _kelvin = kelvin, _reamor = reamor, super(key: key);

  final double _kelvin;
  final double _reamor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children:[
            Text("Suhu dalam Kelvin"),
            Divider(),
            Text(
              '$_kelvin',
              style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            )
          ]
        ),
        Column(
          children: [
            Text("Suhu dalam Reamor"),
            Divider(),
            Text(
              '$_reamor',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            )
        ],
        )
      ],
      );
  }
}