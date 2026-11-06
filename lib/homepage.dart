import 'package:flutter/material.dart';
import 'package:zarin80_flutter_login_interface_validation/containerpage.dart';
import 'package:zarin80_flutter_login_interface_validation/listview.dart';
import 'containerpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color rose = Color.fromARGB(255, 94, 169, 99);
  static const Color darkRose = Color.fromARGB(255, 22, 86, 11);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Homepage 64B",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: rose,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_outline),
            tooltip: "Profile",
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
            tooltip: "Logout",
          ),
        ],
      ),

      drawer: Drawer(
        backgroundColor: const Color(0xFFFFF7FA),
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [rose, darkRose],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 38,
                  color: darkRose,
                ),
              ),
              accountName: Text(
                "Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("student@example.com"),
            ),

            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text("Homepage"),
              hoverColor: Colors.pink.shade100,
              onTap: () => Navigator.pop(context),
            ),

            const Divider(indent: 16, endIndent: 16),

            ListTile(
              leading: const Icon(Icons.widgets_outlined),
              title: const Text("Container & Card"),
              hoverColor: Colors.pink.shade100,
              onTap: () => Navigator.pop(context),
            ),

            const Divider(indent: 16, endIndent: 16),

            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text("Settings"),
              hoverColor: Colors.pink.shade100,
              onTap: () {},
            ),

            const Spacer(),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {},
            ),

            const SizedBox(height: 12),
          ],
        ),
      ),

      body: const ContainerPage(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: darkRose,
        foregroundColor: Colors.white,
        hoverColor: Colors.amber,
        tooltip: "Add",
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
