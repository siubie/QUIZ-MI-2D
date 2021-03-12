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
  double _kelvin=0;
  double _reamor=0;
  String selectedDropdown = "kelvin";
  //0 fixing error di layout
  //buang expanded di result widget
  //1 buat variabel dropdown
  var listSatuanSuhu = ["kelvin", "reamur"];
  List<String> listHasil = [];

  _konversiSuhu() {
    setState(() {
      print(listHasil.length);
      _inputUser = double.parse(etInput.text);
      switch (selectedDropdown) {
        case "kelvin":
          {
            // statements;
            _result = _inputUser + 273;
            listHasil.add("Konversi dari : " +
                "$_inputUser" +
                " ke " +
                "$_result" +
                " Kelvin");
          }
          break;

        case "reamur":
          {
            //statements;
            _result = _inputUser * 4 / 5;
            listHasil.add("Konversi dari : " +
                "$_inputUser" +
                " ke " +
                "$_result" +
                " Reamur");
          }
          break;
      }
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
        debugShowCheckedModeBanner: false, // untuk menghilangkan banner debug
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
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Result(
                        kelvin: _kelvin, reamor: _reamor //mengubah widget 
                      ),
                    ],
                  ),
                ),
                Convert(konvertHandler: _konversiSuhu),
                Expanded(
                  child: ListView.builder(
                    itemCount: listHasil.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Text(listHasil[index]),
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
