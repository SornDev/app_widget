import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ໜ້າທຳອິດ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ໜ້າທຳອິດ',
              style: TextStyle(fontSize: 40),
            ),
            Text('ນັບຈຳນວນ: ${num}')
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                num++;
              });
            },
            child: Icon(Icons.add),
            tooltip: 'add',
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                num--;
              });
            },
            child: Icon(Icons.remove),
            tooltip: 'remove',
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                num = 0;
              });
            },
            child: Icon(Icons.recycling),
            tooltip: 'clear',
          ),
        ],
      ),
    );
  }
}
