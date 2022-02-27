import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/inputSuhu.dart';
import 'widgets/resultSuhu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State < MyApp > createState() => _MyAppState();
}

class _MyAppState extends State < MyApp > {
  TextEditingController etInput = new TextEditingController();

  //state
  double inputUser = 0;
  double kelvin = 0;
  double fahrenheit = 0;
  double reamur = 0;

  konversi() {
    //set state
    setState(() {
      inputUser = double.parse(etInput.text);
      reamur = 4 / 5 * inputUser;
      kelvin = inputUser + 273;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Konverter Flutter',
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
            children: [
              Input(etInput: etInput),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ResultSuhu(
                    hasil: kelvin,
                    title: "Suhu dalam Kelvin",
                  ),
                  ResultSuhu(
                    hasil: reamur,
                    title: "Suhu dalam Reamur",
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: konversi,
                  color: Colors.blue,
                  textColor: Colors.black,
                  child: Text("Konversi"),
                ))
            ],
          ),
        ),
      ),
    );
  }
}