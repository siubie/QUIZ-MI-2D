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
  String selectedDropdown = "kelvin";
  //0 fixing error di layout
  //buang expanded di result widget
  //1 buat variabel dropdown
  double _kelvin = 0;
  double _reamor = 0;
  double _fahrenhrit = 0;
  var listSatuanSuhu = ["kelvin", "reamur"];
  List<String> listHasil = [];

  _konversiSuhu() {
    setState(() {
      _inputUser = double.parse(etInput.text);
      _kelvin = _inputUser + 273;
      _reamor = _inputUser * (4/5);
      _fahrenhrit = 9/5 * _inputUser + 32;
    });
  }

  _onDropdownChanged(String value) {
    setState(() {
      selectedDropdown = value;
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
                //DropdownButton(
                  //items: listSatuanSuhu.map((String value) {
                    //return DropdownMenuItem(
                      //value: value,
                      //child: Text(value),
                    //);
                  //}).toList(),
                  //value: selectedDropdown,
                  //onChanged: _onDropdownChanged,
                  //isExpanded: true,
                //),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Result(
                        judul: 'Kelvin',result: _kelvin,
                      ),
                      Result(
                        judul: 'Reamur',result: _reamor,
                      ),
                      Result(
                        judul: 'Fahrenheit',result: _fahrenhrit,
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
