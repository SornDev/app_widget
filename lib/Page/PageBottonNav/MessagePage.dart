import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ຂໍ້ຄວາມ')),
      body: Center(
        child: Text(
          'ໜ້າຂໍ້ຄວາມ',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
