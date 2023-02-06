import 'package:flutter/material.dart';

class ExpandedApp extends StatelessWidget {
  const ExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded App'),
      ),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.amberAccent,
                  child: Text('data'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.cyan,
                  child: Text('data'),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    print('Ok');
                  },
                  child: Text('Click'),
                ),
              ),
            ],
          ),
          Row(
            children: const <Widget>[
              Icon(
                Icons.access_alarm,
                size: 60,
              ),
              Icon(
                Icons.account_circle,
                size: 60,
              ),
              Expanded(
                child: Icon(
                  Icons.save,
                  size: 60,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.volume_up,
                  size: 60,
                ),
              ),
            ],
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              width: 100,
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
