import 'package:flutter/material.dart';

import 'PageBottonNav/BugPage.dart';
import 'PageBottonNav/Home.dart';
import 'PageBottonNav/MessagePage.dart';
import 'PageBottonNav/UserPage.dart';

class BottonNavBar extends StatefulWidget {
  const BottonNavBar({super.key});

  @override
  State<BottonNavBar> createState() => _BottonNavBarState();
}

class _BottonNavBarState extends State<BottonNavBar> {
  int currentIndex = 0;
  final Screen = [
    Center(
      child: Text(
        'ໜ້າທຳອິດ',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        'ແກ້ບັ໊ກ',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        'ຂໍ້ຄວາມ',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        'ຂໍ້ມູນຜູ້ໃຊ້',
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];

  final ScreenPage = [
    HomePage(),
    BugPage(),
    MessagePage(),
    UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Botton Navigation Bar'),
      // ),
      body: ScreenPage[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // ກຳນົດໃຫ້ເປັນແບບ fix
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        iconSize: 35,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'ໜ້າທຳອິດ',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.bug_report),
              label: 'ແກ້ບັ໊ກ',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'ຂໍ້ຄວາມ',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'ຂໍ້ມູນຜູ້ໃຊ້',
              backgroundColor: Colors.amber),
        ],
      ),
    );
  }
}
