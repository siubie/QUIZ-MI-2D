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
  String selectedDropdown = "kelvin";
  double _kelvin = 0;
  double _reamur = 0;
  double _fahrenheit = 0;
  //0 fixing error di layout
  //buang expanded di result widget
  //1 buat variabel dropdown

  _konversiSuhu() {
    setState(() {
      setState(() {
      _inputUser = double.parse(etInput.text);
      _kelvin = _inputUser + 273;
      _reamur = _inputUser * 4 / 5;
      _fahrenheit = (_inputUser * 9 / 5) + 32; 
    });
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Input(etInput: etInput),
                //3 buat dropdown biasa
                // DropdownButton(
                //   items: listSatuanSuhu.map((String value) {
                //     return DropdownMenuItem(
                //       value: value,
                //       child: Text(value),
                //     );
                //   }).toList(),
                //   value: selectedDropdown,
                //   onChanged: _onDropdownChanged,
                //   isExpanded: true,
                // ),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    title: " fahrenheit ",
                    result: _fahrenheit,
                  ),
                ],
              ),
                Convert(konvertHandler: _konversiSuhu),
                // Expanded(
                //   child: ListView.builder(
                //     itemCount: listHasil.length,
                //     itemBuilder: (context, index) {
                //       return Container(
                //         child: Text(listHasil[index]),
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ));
  }
}
