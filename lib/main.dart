import 'package:flutter/material.dart';

import 'Navigator/Screen/FirstScreen.dart';
import 'Page/AppBar.dart';
import 'Page/BottonNavBar.dart';
import 'Page/Dashboard.dart';
import 'Page/Form.dart';
import 'Page/LoginPage.dart';
import 'Page/SideBar.dart';
import 'Page/TabBar.dart';
import 'widget/00-textWedget.dart';
import 'widget/01-a-imageWidget.dart';
import 'widget/01-Container.dart';
import 'widget/02-RowColumn.dart';
import 'widget/03-BasicListView.dart';
import 'widget/04-ItemListView.dart';
import 'widget/05-HorzontalListView.dart';
import 'widget/06-ListViewBuilder.dart';
import 'widget/07-GridView.dart';
import 'widget/08-Stack.dart';
import 'widget/09-Expanded.dart';
import 'widget/10-SizedBox.dart';
import 'widget/11-Wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FirstScreen(),
    );
  }
}

//--- state full

class AppFull extends StatefulWidget {
  const AppFull({super.key});

  @override
  State<AppFull> createState() => _AppFullState();
}

class _AppFullState extends State<AppFull> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SornDev App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

//--- state less

class AppLess extends StatelessWidget {
  const AppLess({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SornDev2'),
        ),
        body: Container(
          child: Text('App2'),
        ),
      ),
    );
  }
}
