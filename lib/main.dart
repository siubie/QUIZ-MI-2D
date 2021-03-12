import 'package:converter/widget/convert.dart';
import 'package:flutter/material.dart';
import 'package:converter/widget/input.dart';
import 'package:converter/widget/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // text controller
  TextEditingController etInput = new TextEditingController();
  //variabel berubah
  double _inputUser = 0;
  double _result = 0;
 double _kelvin = 0;
 double _reamur = 0;
 double _fahrenheit =0;
 //tambahkan variabel lain yang dibutuhkan

 void konvertHandler(){
   setState(() {
     _inputUser = double.parse(etInput.text);
    _kelvin = _inputUser + 273;
    _reamur = _inputUser *(4/5);    
    _fahrenheit = 9/5 * _inputUser + 32;
    });

 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Konverter Suhu"),
          ),
          body: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Input(etInput: etInput),
                //3 buat dropdown biasa
               Container(
      child: 
      Row (
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget> [
        Column(
      children: <Widget>[
       Text("Suhu Dalam ",
       style: TextStyle(fontSize: 16),
       ),
       Text("Kelvin",
       style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
       ),
        Divider(),
        Text(
          '$_kelvin', 
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
          ],
        ),
        Column(
      children: <Widget>[
       Text("Suhu Dalam ",style: TextStyle(fontSize: 16),
       ),
       Text("Reamour",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
       ),
        Divider(),
        Text(
          '$_reamur', 
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
          ],
        ),
        Column(
      children: <Widget>[
       Text("Suhu Dalam ",style: TextStyle(fontSize: 16),
       ),
       Text("Fahrenheit",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
       ),
        Divider(),
        Text(
          '$_fahrenheit', 
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
          ],
        ),
    ],
              ),
    ),
                Convert(konvertHandler: konvertHandler),


               
              ],
            ),
          ),
        ));
  }
}
