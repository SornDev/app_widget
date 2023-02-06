import 'package:flutter/material.dart';

class StackApp extends StatelessWidget {
  const StackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack App'),
      ),
      body: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
        Image.network(
          "https://www.collinsdictionary.com/images/full/dog_230497594.jpg",
        ),
        Positioned(
          top: 40,
          left: 40,
          child: Text(
            'ໃຊ້ Positioned Widget',
            style: TextStyle(fontSize: 28),
          ),
        ),
        Align(
          // ໂຕກຳນົດ
          alignment: Alignment(0.2, 0.5),
          child: Container(
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(color: Colors.black45),
            child: Text(
              'App Stack 01',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.black45),
          child: Text(
            'App Stack 02',
            style: TextStyle(color: Colors.amber),
          ),
        ),
      ]),
    );
  }
}
