import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  bool _value = false;

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.blue,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Container(
              height: 420,
              width: double.infinity,
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'ເຂົ້າສູ່ລະບົບ',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ອີເມວລ໌:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          border: OutlineInputBorder(),
                          hintText: 'ປ້ອນອີເມວລ໌',
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'ລະຫັດຜ່ານ:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          border: OutlineInputBorder(),
                          hintText: 'ປ້ອນລະຫັດຜ່ານ',
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Checkbox(
                              value: this._value,
                              onChanged: (value) {
                                setState(() {
                                  this._value = !_value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('ຈື່ຂ້ອຍໄວ້ໃນລະບົບ'),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('ເຂົ້າສູ່ລະບົບ'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'ລືມລະຫັດຜ່ານ',
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        )
      ],
    ));
  }
}
