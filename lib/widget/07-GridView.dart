import 'package:flutter/material.dart';

class GridviewApp extends StatelessWidget {
  GridviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GridView App'),
        ),
        body: Padding(
          padding: EdgeInsets.all(4),
          child: GridView.count(
            crossAxisCount:
                3, // crossAxisCount ຈະເປັນການກຳນົດ ຈຳນວນ column ຂອງ gridview
            children: _buildGrid(30),
          ),
        ));
  }

  List<Container> _buildGrid(int count) {
    return List.generate(
      count,
      (index) => Container(
        margin: EdgeInsets.all(4),
        color: Colors.amber,
        // child: Text(count.toString()),
        // child: Image.network(
        //   "https://www.collinsdictionary.com/images/full/dog_230497594.jpg",
        //   fit: BoxFit.cover,
        //),
      ),
    );
  }
}
