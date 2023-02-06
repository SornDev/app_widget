import 'package:flutter/material.dart';

class RowColumnApp extends StatelessWidget {
  const RowColumnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Row & Column'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceAround, // ກຳນົດໃຫ້ຢູ່ ເຄີ່ງກາງ, ຊ້າຍ, ຂວາ ແນວນອນ
              crossAxisAlignment: CrossAxisAlignment
                  .end, // ກຳນົດການຈັດວາງ ເທິງ, ລຸ່ມ, ກາງ ແນວຕັ້ງ
              textBaseline: TextBaseline
                  .alphabetic, // ກຳນົດຕົວອັກສອນ ໃຫ້ຢູ່ໃນ baseline ດຽວກັນ ໃຊ້ຮ່ວມກັບ CrossAxisAlignment.baseline
              textDirection: TextDirection
                  .rtl, // ກຳນົດການ ສະແດງຂໍ້ມູນ ຈາກ ຊາຍໄປຂວາ ຫລືຂວາໄປຊ້າຍ
              children: const <Widget>[
                FlutterLogo(),
                Text('Text 01'),
                Text('Text 02')
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                FlutterLogo(),
                Text('Text 01'),
                Text('Text 02')
              ],
            ),
          ],
        ));
  }
}

// Example test

class RowColumnAppTest extends StatelessWidget {
  const RowColumnAppTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Column App Test',
      home: Scaffold(
        appBar: AppBar(
          title: Text('RC App Test'),
        ),
        body: Row(
          children: <Widget>[
            FlutterLogo(
              size: 50,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'SornDev',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Tranning'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
