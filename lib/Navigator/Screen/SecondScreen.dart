import 'package:flutter/material.dart';
import 'package:flutter_application_1/Navigator/Screen/ThirdScreen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('ໜ້າທີ່ 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ປະຈຸບັນຢູ່ໜ້າທີ່ 2'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdSreen()));
                },
                child: Text('ໄປໜ້າທີ່ 3'))
          ],
        ),
      ),
    );
  }
}
