import 'package:flutter/material.dart';
import 'package:flutter_application_1/Navigator/Screen/SecondScreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

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
            Text('ປະຈຸບັນຢູ່ໜ້າທີ່ 1'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(),
                  ),
                );
              },
              child: Text('ໄປໜ້າທີ່ 2'),
            )
          ],
        ),
      ),
    );
  }
}
