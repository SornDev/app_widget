import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BListViewApp extends StatelessWidget {
  const BListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic ListView'),
      ),
      body: Padding(
        // ສາມາດໃຊ້ Padding ໄດ້
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'ການສ້າງ ListView ແບບ Horizontal List',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 80,
                  ),
                  Icon(Icons.account_circle, size: 80),
                  Icon(Icons.account_circle, size: 80),
                  Icon(Icons.account_circle, size: 80),
                  Icon(Icons.account_circle, size: 80),
                  Icon(Icons.account_circle, size: 80),
                  Icon(Icons.account_circle, size: 80),
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: ListView(
                  children: const <Widget>[
                    Text(
                      'ການສ້າງ ListView ແບບ Vertical List',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                        "industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. \n\n\n"
                        "industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. \n\n\n"
                        "industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. \n\n\n"
                        "industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. \n\n\n"
                        "industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. \n\n\n"
                        "industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
