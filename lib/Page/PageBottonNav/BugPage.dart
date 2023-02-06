import 'package:flutter/material.dart';

class BugPage extends StatelessWidget {
  const BugPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ແກ້ບັ໊ກ'),
      ),
      body: Center(
        child: Text(
          'ໜ້າແກ້ບັ໊ກ',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
