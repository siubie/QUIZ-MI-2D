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
  double _fahrenhet = 0;
  String selectedDropdown = "kelvin";
  //0 fixing error di layout
  //buang expanded di result widget
  //1 buat variabel dropdown
  var listSatuanSuhu = ["kelvin", "reamur"];
  List<String> listHasil = [];

  _konversiSuhu() {
    setState(() {
    _inputUser = double.parse(etInput.text);
    _fahrenhet = (_inputUser * 9 / 5) + 32;
    _reamur = _inputUser * 4 / 5;
    _kelvin = _inputUser + 273;
      // print(listHasil.length);
      // _inputUser = double.parse(etInput.text);
      // switch (selectedDropdown) {
      //   case "kelvin":
      //     {
      //       // statements;
      //       _result = _inputUser + 273;
      //       listHasil.add("Konversi dari : " +
      //           "$_inputUser" +
      //           " ke " +
      //           "$_result" +
      //           " Kelvin");
      //     }
      //     break;

      //   case "reamur":
      //     {
      //       //statements;
      //       _result = _inputUser * 4 / 5;
      //       listHasil.add("Konversi dari : " +
      //           "$_inputUser" +
      //           " ke " +
      //           "$_result" +
      //           " Reamur");
      //     }
      //     break;
      // }
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
                Column(
          children: [
            Text("Kelvin", style: TextStyle(fontSize : 20),
            ),
            Text("$_kelvin", style: TextStyle(fontSize : 30),
            ),                                                          
      ],                         
    ),
        Column(
          children: [
            Text("Reamur", style: TextStyle(fontSize : 20),
            ),
            Text("$_reamur", style: TextStyle(fontSize : 30),
            ),                                                          
      ],                         
    ),
        Column(
          children: [
            Text("Fahrenheit", style: TextStyle(fontSize : 20),
            ),
            Text("$_fahrenhet", style: TextStyle(fontSize : 30),
            ),                                                          
           ],     
        ),

                
               // Input(etInput: etInput),
                //3 buat dropdown biasa
                //DropdownButton(
                  //items: listSatuanSuhu.map((String value) {
                   // return DropdownMenuItem(
                      //value: value,
                     // child: Text(value),
                   // );
                 // }).toList(),
                  //value: selectedDropdown,
                  //onChanged: _onDropdownChanged,
                  //isExpanded: true,
               // ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Result(
                        result: _result,
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
