import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '1 ກຸມພາ, ວັນຈັນ',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 11,
                                ),
                              ),
                              Text(
                                'ສະບາຍດີ, SornDev!',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          "https://media.npr.org/assets/img/2022/11/08/ap22312071681283-0d9c328f69a7c7f15320e8750d6ea447532dff66-s1100-c50.jpg",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        width: double.infinity,
                        height: 150,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Align(
                        child: Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            'ຍອດເຫຼືອເງິນສົດ',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                      Align(
                        child: Container(
                          padding: EdgeInsets.only(top: 70),
                          child: Text(
                            '250.000.000 Kip',
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 120,
                    // child: Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(children: [
                            CircleAvatar(
                              radius: 30,
                              child: Icon(Icons.add),
                            ),
                            Text('ເພີ່ມເພື່ອນ'),
                          ]),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              child: Icon(Icons.abc),
                            ),
                            Text('Sonexay'),
                          ]),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(children: [
                            CircleAvatar(
                              radius: 30,
                              child: Icon(Icons.abc),
                            ),
                            Text('Sonexay'),
                          ]),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(children: [
                            CircleAvatar(
                              radius: 30,
                              child: Icon(Icons.abc),
                            ),
                            Text('Sonexay'),
                          ]),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(children: [
                            CircleAvatar(
                              radius: 30,
                              child: Icon(Icons.abc),
                            ),
                            Text('Sonexay'),
                          ]),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(children: [
                            CircleAvatar(
                              radius: 30,
                              child: Icon(Icons.abc),
                            ),
                            Text('Sonexay'),
                          ]),
                        ),
                      ],
                    ),
                    // ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ເຄື່ອນໄຫວທຸລະກຳ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ເບີ່ງທັງໝົດ',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2048px-Amazon_icon.svg.png"),
                        ),
                        title: Text(
                          'ບໍລິການ ອະເມຊອນ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'ມື້ນີ້, 11:00ນາທີ',
                          style: TextStyle(fontSize: 14),
                        ),
                        trailing: Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            '32.000 Kip',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.network(
                              "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png"),
                        ),
                        title: Text(
                          'ບໍລິການ ອະເມຊອນ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'ມື້ນີ້, 11:00ນາທີ',
                          style: TextStyle(fontSize: 14),
                        ),
                        trailing: Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            '- 12.000 Kip',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREuX5Oe4xksr-q4MTl-sN6Iiyuqjdn0E8a8Ll0kpEo5nAn8XgZtI7PyLj_eiWAfuWpgZY&usqp=CAU"),
                        ),
                        title: Text(
                          'ບໍລິການ ອະເມຊອນ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'ມື້ນີ້, 11:00ນາທີ',
                          style: TextStyle(fontSize: 14),
                        ),
                        trailing: Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            '- 12.000 Kip',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.network(
                              "https://cdn4.iconfinder.com/data/icons/chinas-social-share-icons/256/cssi_taobao-512.png"),
                        ),
                        title: Text(
                          'ບໍລິການ ອະເມຊອນ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'ມື້ນີ້, 11:00ນາທີ',
                          style: TextStyle(fontSize: 14),
                        ),
                        trailing: Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            '- 12.000 Kip',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.network(
                              "https://cdn-icons-png.flaticon.com/512/174/174861.png"),
                        ),
                        title: Text(
                          'ບໍລິການ ອະເມຊອນ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'ມື້ນີ້, 11:00ນາທີ',
                          style: TextStyle(fontSize: 14),
                        ),
                        trailing: Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            '- 12.000 Kip',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
