import 'package:flutter/material.dart';

class SizedBoxApp extends StatelessWidget {
  const SizedBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sized Box App"),
      ),
      body: Column(
        children: <Widget>[
          Text('App 01'),
          SizedBox(
            height: 4,
          ),
          Text('App 02'),
          SizedBox(
            width: 200,
            height: 200,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Ok'),
            ),
          ),
        ],
      ),
    );
  }
}
