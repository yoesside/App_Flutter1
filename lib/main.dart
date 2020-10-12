import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int number = 0;

  void tekanTombol() {
    
    setState(() {//mengubah tampilan sesuai dengan state yang ada saat ini
      number = number + 1;
    });
  }
  //Anjay

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Stateful widget demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(number.toString(), style: TextStyle(fontSize: number.toDouble()),),
            RaisedButton(
              child: Text("Tambah bilangan"),
              onPressed: tekanTombol,
            )
          ],
        ),
      ),
    ));
  }
}
