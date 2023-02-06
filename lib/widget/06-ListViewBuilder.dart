import 'package:flutter/material.dart';

class LVBuilderApp extends StatelessWidget {
  LVBuilderApp({super.key});

  // ສ້າງກ້ອນຂໍ້ມູນ
  final List<String> items =
      List<String>.generate(20, (index) => "Item ${++index}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ການສ້າງ ListView Builder'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          // ທຳການ return ListTile ກ່ອນຈື່ງທຳການ ຄອບດ້ວຍ Column
          return Column(
            children: [
              ListTile(
                leading: Icon(Icons.directions_bus),
                title: Text("${items[index]}"),
                subtitle: Text('app'),
                trailing: Icon(Icons.notifications),
              ),
              Divider(
                height: 4,
                color: Colors.grey.shade500,
              )
            ],
          );
        },
      ),
    );
  }
}
