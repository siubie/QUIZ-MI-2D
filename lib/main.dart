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
     double _fahrenheit = 0;
  String selectedDropdown = "kelvin";
  //0 fixing error di layout
  //buang expanded di result widget
  //1 buat variabel dropdown
  var listSatuanSuhu = ["kelvin", "reamur","fahrenheit"];
  List<String> listHasil = [];

  _konversiSuhu() {
    setState(() {
      print(listHasil.length);
      _inputUser = double.parse(etInput.text);
      _kelvin = _inputUser + 273;
      _reamur = _inputUser * 4 / 5;
      _fahrenheit = (_inputUser * 9/5)+32;
      
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
                
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text("Suhu Kelvin", style: TextStyle(fontSize: 15)),
                            ),
                            Container(
                              child: Text("$_kelvin", style: TextStyle(fontSize: 30)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text("Suhu Reamur", style: TextStyle(fontSize: 15)),
                            ),
                            Container(
                              child: Text(
                                "$_reamur",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child:
                                  Text("Suhu Fahrenheit", style: TextStyle(fontSize: 15)),
                            ),
                            Container(
                              child: Text("$_fahrenheit", style: TextStyle(fontSize: 30)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
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
