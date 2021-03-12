import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key key, @required double result, @required String title})
      : _result = result,
        title = title,
        super(key: key);

  final double _result;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text("$title"),
          Text("$_result")
        ],
      ),
    );
  }
}
