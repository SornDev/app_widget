import 'package:flutter/material.dart';
//import 'package:validators/sanitizers.dart';
import 'package:validators/validators.dart';
import 'package:url_launcher/url_launcher.dart';

class FormApp extends StatefulWidget {
  const FormApp({super.key});

  @override
  State<FormApp> createState() => _FormAppState();
}

// ສ້າງ Class

class User {
  User() {
    this.email = "";
    this.password = "";
    this.gender = "male";
    this.agreePolicy = false;
    this.receiveEmail = false;
  }

  late String email;
  late String password;
  late String gender;
  late bool agreePolicy;
  late bool receiveEmail;
}

class _FormAppState extends State<FormApp> {
  final _formKey = GlobalKey<FormState>();
  final Uri _url = Uri.parse('https://flutter.dev');
  User user = User();

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email (ອີເມວລ໌)',
                  hintText: 'enter email',
                  icon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                controller: _email,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'ກະລຸນາປ້ອນຂໍ້ມູນ';
                  }
                  if (!isEmail(value)) {
                    return 'ອີເມວລ໌ ບໍ່ຖຶກຕ້ອງ!';
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password (ລະຫັດຜ່ານ)',
                  hintText: 'enter password',
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
                controller: _password,
                validator: (value) {
                  if (value!.length < 6) {
                    return 'ລະຫັດຕ້ອງບໍ່ຕ່ຳກ່ວາ 6 ຕົວອັກສອນ';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: [
                    Text('ເພດ:'),
                    Radio(
                        value: 'male',
                        groupValue: user.gender,
                        onChanged: _handleRadioValueChange),
                    Text('ຊາຍ'),
                    Radio(
                        value: 'female',
                        groupValue: user.gender,
                        onChanged: _handleRadioValueChange),
                    Text('ຍິງ'),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: [
                    Text('Receive Email:'),
                    Switch(
                        activeColor: Colors.red,
                        value: user.receiveEmail,
                        onChanged: (select) {
                          print(select);
                          setState(() {
                            user.receiveEmail = select;
                          });
                        }),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      activeColor: Colors.red,
                      value: user.agreePolicy,
                      onChanged: (value) {
                        setState(() {
                          user.agreePolicy = value!;
                        });
                      },
                    ),
                    Text('i agree policy'),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: _launchUrl,
                      child: Text(
                        'Policy Data',
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Submit ຂໍ້ມູນ'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      user.email = _email.text;
      user.password = _password.text;
      if (user.agreePolicy == false) {
        showDialog(
            barrierDismissible: false, // ບໍ່ໃຫ້ຜູ້ໃຊ້ ຄຼິກດ້ານນອກເພື່ອປິດ
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('ແຈ້ງເຕືອນຈາກລະບົບ'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text('ທ່ານບໍ່ຍອມຮັບເງື່ອນໄຂ!'),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Close'))
                ],
              );
            });
      } else {
        print("email: ${user.email}");
        print("password: ${user.password}");
        print("Gender: ${user.gender}");
        print("Receive: ${user.receiveEmail}");
        print("Policy: ${user.agreePolicy}");
      }
    }
  }

  void _handleRadioValueChange(value) {
    print(value);
    setState(() {
      user.gender = value;
    });
  }

  void _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
