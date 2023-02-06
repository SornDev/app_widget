import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page/AppBar.dart';

class imageWidget extends StatelessWidget {
  const imageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget ສະແດງຮູບພາບ'),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/sao-vn.jpeg',
            width: 250,
          ),
          Image.network(
              'https://images.pexels.com/photos/1073567/pexels-photo-1073567.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
        ],
      ),
    );
  }
}
