import 'package:flutter/material.dart';

class HListViewApp extends StatelessWidget {
  const HListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal ListView'),
      ),
      body: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        Container(
          alignment: FractionalOffset.center,
          color: Colors.red,
          width: 100,
          child: Text(
            'A',
            style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: FractionalOffset.center,
          color: Colors.green,
          width: 100,
          child: Text(
            'B',
            style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: FractionalOffset.center,
          color: Colors.blue,
          width: 100,
          child: Text(
            'C',
            style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: FractionalOffset.center,
          color: Colors.yellow,
          width: 100,
          child: Text(
            'D',
            style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: FractionalOffset.center,
          color: Colors.orange,
          width: 100,
          child: Text(
            'E',
            style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: FractionalOffset.center,
          color: Colors.indigo,
          width: 100,
          child: Text(
            'F',
            style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}
