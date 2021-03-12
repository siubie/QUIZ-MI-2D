import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key key, @required double result, @required String judul,})
      : _result = result,
        _judul = judul,
        super(key: key);

  final double _result;
  final String _judul;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              children: [
                Text(_judul),
                SizedBox(
                  height: 15,
                ),
                Text(
                  _result.toStringAsFixed(2),
                  style: TextStyle(fontSize: 36),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
