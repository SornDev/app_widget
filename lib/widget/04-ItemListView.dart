import 'package:flutter/material.dart';

class ItmListViewApp extends StatelessWidget {
  const ItmListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item ListView'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.directions),
            title: Text('ເມນູອາຫານ'),
            subtitle: Text('ຂໍ້ມູນ'),
            trailing: Icon(Icons.notifications),
            enabled: false, // ທຳການ Disabled
          ),
          ListTile(
            leading: Icon(Icons.directions),
            title: Text('ເມນູອາຫານ'),
            subtitle: Text('ຂໍ້ມູນ'),
            trailing: Icon(Icons.notifications),
            selected: true, // ກຳນົດການເລືອກ
          ),
          ListTile(
            leading: Icon(Icons.directions),
            title: Text('ເມນູອາຫານ'),
            subtitle: Text('ຂໍ້ມູນ'),
            trailing: Icon(Icons.notifications),
            onTap: () {
              // ສາມາດກຳນົດ event ການ tap ໃຫ້ມັນໄດ້
              print('tap ok');
            },
          ),
          ListTile(
            leading: Icon(Icons.directions),
            title: Text('ເມນູອາຫານ'),
            subtitle: Text('ຂໍ້ມູນ'),
            trailing: Icon(Icons.notifications),
          ),
          ListTile(
            leading: Icon(Icons.directions),
            title: Text('ເມນູອາຫານ'),
            subtitle: Text('ຂໍ້ມູນ'),
            trailing: Icon(Icons.notifications),
          ),
        ],
      ),
    );
  }
}
