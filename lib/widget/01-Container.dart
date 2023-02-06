import 'package:flutter/material.dart';

class ContainerApp extends StatelessWidget {
  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SornDev2'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(width: 350), // ກຳນົດຄວາມກ້ວາງ
        //constraints: BoxConstraints.expand(), // ຂະຫຍາຍເຕັມ
        padding: EdgeInsets.all(30),
        //color: Colors.amber,  ບໍ່ໃຫ້ຊ້ຳກັບ color BoxDecoration
        alignment: FractionalOffset.topCenter, // ກຳນົດທິດທາງຂອງ content
        decoration: BoxDecoration(
          color: Colors.blue, // ກຳນົດສີ
          border: Border.all(
            width: 10,
            color: Colors.greenAccent,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(40), // ປັບແຕ່ງຂອບ
          gradient: LinearGradient(
              colors: [Colors.red, Colors.yellow],
              begin: Alignment.topLeft), // ທຳການເກດສີ
        ), // ປັບແຕ່ງ
        child: Text(
          'App Container Demo',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
