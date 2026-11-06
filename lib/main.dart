import 'package:flutter/material.dart';
//import 'package:zarin80_flutter_project_3/container_page.dart';
import 'listview.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Creative Project',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const ListViewPage(),  
    );
  }
}  