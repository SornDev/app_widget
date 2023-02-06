import 'dart:ui';

import 'package:flutter/material.dart';

class AppBarApp extends StatefulWidget {
  const AppBarApp({super.key});

  @override
  State<AppBarApp> createState() => _AppBarAppState();
}

class _AppBarAppState extends State<AppBarApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.school),
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        elevation: 5,
        centerTitle: true,
        actions: [
          PopupMenuButton(
              // add icon, by default "3 dot" icon
              // icon: Icon(Icons.book)
              itemBuilder: (context) {
            return [
              PopupMenuItem<int>(
                value: 0,
                child: Text("ບັນຊີຂອງຂ້ອຍ"),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text("ການຕັ້ງຄ່າ"),
              ),
              PopupMenuItem<int>(
                value: 2,
                child: Text("ອອກຈາກລະບົບ"),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              print("My account menu is selected.");
            } else if (value == 1) {
              print("Settings menu is selected.");
            } else if (value == 2) {
              print("Logout menu is selected.");
            }
          }),
        ],
        toolbarHeight: 80,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        title: Text('SornDev App'),
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
