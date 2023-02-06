import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page/AppBar.dart';

class SideBarApp extends StatelessWidget {
  const SideBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sidebar Menu'),
      ),
      drawer: const NavigatorDrawer(),
    );
  }
}

// ສ້າງ stateless ເພື່ອສ້າງ Sidebar Menu

class NavigatorDrawer extends StatelessWidget {
  const NavigatorDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BuildHeder(context),
              BuidMenuItem(context),
            ],
          ),
        ),
      );

  // ທຳການສ້າງ Widget ຂື້ນມາ
  Widget BuildHeder(BuildContext context) => Container(
        width: double.infinity,
        color: Colors.blue.shade400,
        // ກຳນົດໃຫ້ລາຍດານເມນູ ມີໄລຍະຫ່າງ ຕາມຂະໜາດໜ້າຈໍ ທີ່ສະແດງຜົນ
        padding: EdgeInsets.only(
          top: 25 + MediaQuery.of(context).padding.top,
          bottom: 25,
        ),
        // ທຳການ ຄອບ Column ດ້ວຍ inkWell ເພື່ອຈະສາມາດ Tap ໄດ້
        child: InkWell(
          onTap: () {
            print('Go to User');
          },
          child: Column(
            children: const [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/lifestyle-business-people-using-laptop-computer-office-desk_1150-10181.jpg?w=2000"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'SornDev Admin',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'sorndev.teach@gmail.com',
                style: TextStyle(fontSize: 14, color: Colors.white),
              )
            ],
          ),
        ),
      );
  Widget BuidMenuItem(BuildContext context) => Container(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: Text('ໜ້າທຳອິດ'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.favorite_outline),
              title: Text('ສີ່ງທີ່ມັກ'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.workspaces),
              title: Text('ແຜນວຽກ'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: Text('ແຈ້ງເຕືອນ'),
              trailing: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                ),
                child: Text(
                  '12',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.update),
              title: Text('ອັບເດດລະບົບ'),
              onTap: () {},
            ),
            const Divider(
              color: Colors.black45,
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text('ອອກຈາກລະບົບ'),
              onTap: () {},
            ),
          ],
        ),
      );
}
