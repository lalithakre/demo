// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int a = 9;
  int b = 3;
  void valueIncreasea() {
    a++;
  }

  void valueIncreaseb() {
    b++;
  }

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My App",
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Press button ',
              style: TextStyle(fontSize: 25, height: 0, color: Colors.white),
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              "$_counter",
              style: TextStyle(height: 2, fontSize: 23),
            ),
            SizedBox(
              height: 23,
            ),
            Image.asset(
              'assets/rose.jpg',
            ),
            SizedBox(
              height: 23,
            ),
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Wait a minute',
              child: const Icon(Icons.add),
            ),
            // Text(
            //   "$a+$b",
            //   style: TextStyle(fontSize: 25, height: 0, color: Colors.white),
            // ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
// there are two types of state in flutter:
// stf for statefullWidget
// stl for statelessWidget
