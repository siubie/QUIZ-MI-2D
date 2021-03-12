import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key key,
  @required String title,
   @required double result})
      : _title = title, 
      _result = result,
        super(key: key);
  final String _title;
  final double _result;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$_title',
          ),
          Text(
            '$_result',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
