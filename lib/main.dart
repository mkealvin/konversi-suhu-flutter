import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  TextEditingController etInput = new TextEditingController();
  //State
  double inputUser = 0;
  double kelvin = 0;
  double fahrenheit = 0;
  double reamur = 0;

  konversi() {
    // Set State
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Converter"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: "Masukan Nilai Suhu"),
                keyboardType: TextInputType.number,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Kelvin",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "30",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Fahrenheit",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "20",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Reamur",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "30",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: konversi,
                  color: Colors.lightBlue,
                  textColor: Colors.white,
                  child: Text("Konversi"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
