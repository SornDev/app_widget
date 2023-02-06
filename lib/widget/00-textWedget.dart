import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Widget')),
      body: Center(
        child: Text(
          'ຂໍ້ຄວາມ Text Widget',
          style: TextStyle(
            fontSize: 40,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
