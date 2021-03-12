import 'package:flutter/widgets.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              'Suhu dalam Kelvin',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              '$_kelvin',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'Suhu dalam Reamur',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              '$_reamur',
              style: TextStyle(
                fontSize: 30,
              ),
            )
          ],
        ),
        Column(
          children: [
            Text(
              'Suhu dalam Fahrenheit',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              '$_fahrenheit',
              style: TextStyle(
                fontSize: 30,
              ),
            )
          ],
        )
      ],
    );
  }
}
