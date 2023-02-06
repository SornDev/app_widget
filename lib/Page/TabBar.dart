import 'dart:math';

import 'package:flutter/material.dart';

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar App'),
            bottom: const TabBar(
                indicatorColor: Colors.white,
                isScrollable: true,
                tabs: [
                  Tab(
                    icon: Icon(Icons.directions_car),
                    text: 'ລົດເກັງ',
                  ),
                  Tab(
                    icon: Icon(Icons.directions_bus),
                    text: 'ລົດເມ',
                  ),
                  Tab(
                    icon: Icon(Icons.directions_train),
                    text: 'ລົດໄຟ',
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            Icon(
              Icons.directions_car,
              size: 80,
            ),
            Icon(
              Icons.directions_bus,
              size: 80,
            ),
            Icon(
              Icons.directions_train,
              size: 80,
            ),
          ]),
        ),
      ),
    );
  }
}

// ແບບທີ່ 2 ---------------------------------
class TabBarApp2 extends StatelessWidget {
  const TabBarApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 1,
        length: 5,
        child: Scaffold(
            body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                title: Text('ຕົວຢ່າງ Tabs'),
                pinned: true,
                floating: true,
                bottom: TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.flight),
                      child: Text('data'),
                    ),
                    Tab(child: Text('ລົດໄຟ')),
                    Tab(child: Text('ລົດເກັງ')),
                    Tab(child: Text('ລົດຖີບ')),
                    Tab(child: Text('ເຮືອ')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              Icon(Icons.flight, size: 350),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
              Icon(Icons.directions_bike, size: 350),
              Icon(Icons.directions_boat, size: 350),
            ],
          ),
        )),
      ),
    );
  }
}
