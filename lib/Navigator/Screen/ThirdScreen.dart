import 'package:flutter/material.dart';
import 'package:flutter_application_1/Navigator/Screen/FirstScreen.dart';

class ThirdSreen extends StatelessWidget {
  const ThirdSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('ໜ້າທີ່ 3'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('ດຽວນີ້ຢູ່ໜ້າທີ່ 3'),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                // Navigator.pushReplacement(context,
                //     MaterialPageRoute(builder: (context) => FirstScreen()));
              },
              child: Text('ໄປໜ້າທີ່ 1'))
        ],
      )),
    );
  }
}
