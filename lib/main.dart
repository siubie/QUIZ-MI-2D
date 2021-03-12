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
  int _counter = 0;
  double _inputUser = 0;
  double _reamur = 0;
  double _kelvin = 0;
  double _fahrenheit = 0;
  Color _warna = Colors.green[100];
  //String selectedDropdown = "kelvin";
  //0 fixing error di layout
  //buang expanded di result widget
  //1 buat variabel dropdown
  //var listSatuanSuhu = ["kelvin", "reamur"];
  List<String> listHasil = [];

  _konversiSuhu() {
    setState(() {
      _counter++;
      if (_counter%2==0) {
        _warna = Colors.red;
      } else {
        _warna = Colors.green;
      }
      print(listHasil.length);
      _inputUser = double.parse(etInput.text);
      _reamur = _inputUser * 4 / 5;
      _kelvin = _inputUser + 273;
      _fahrenheit = (9/5 * _inputUser) +32;
      listHasil.add("Konversi dari : " +
                "$_inputUser" +
                " ke " +
                "$_reamur" +
                " Reamur");
      listHasil.add("Konversi dari : " +
                "$_inputUser" +
                " ke " +
                "$_kelvin" +
                " Kelvin");
      listHasil.add("Konversi dari : " +
                "$_inputUser" +
                " ke " +
                "$_fahrenheit" +
                " Fahrenheit");
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
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
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Result(
                    title: " Kelvin ",
                    result: _kelvin,
                  ),
                  Result(
                    title: " Reamur ",
                    result: _reamur,
                  ),
                  Result(
                    title: " Fahrenheit ",
                    result: _fahrenheit,
                  ),
                ],
                  ),
                ),
                Convert(konvertHandler: _konversiSuhu),
                SizedBox(height: 10,),
                Expanded(
                  child: ListView.builder(
                    itemCount: listHasil.length,
                    itemBuilder: (context, index) {
                      return Container(
                      margin: EdgeInsets.all(10),
                      child: Text(listHasil[index], style: TextStyle(fontSize: 15, color: _warna),),
                      );
                     },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}