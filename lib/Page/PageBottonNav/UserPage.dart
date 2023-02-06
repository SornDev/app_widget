import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ຂໍ້ມູນຜູ້ໃຊ້')),
      body: Center(
        child: Text(
          'ໜ້າຂໍ້ມູນຜູ້ໃຊ້',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
