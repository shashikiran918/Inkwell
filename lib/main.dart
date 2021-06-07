import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String inkwell='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell Widget'),
        backgroundColor: Colors.green,
        actions: <Widget>[
          Text(
            'KSK',
            textScaleFactor: 3,
          )
        ],
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  inkwell=' Tapped';
                });
              },
              onLongPress: () {
                setState(() {
                  inkwell=' LongPressed';
                });
              },
              child: Container(
                  color: Colors.green,
                  width: 120,
                  height: 70,
                  child: Center(
                      child: Text(
                        'Inkwell',
                        textScaleFactor: 2,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(inkwell,textScaleFactor: 3),
            )
          ],
        ),
      ),
    );
  }
}