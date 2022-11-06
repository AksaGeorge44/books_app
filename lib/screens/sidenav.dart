import 'package:booksapp/screens/drawer.dart';
import 'package:flutter/material.dart';

class SideNav extends StatelessWidget {
  const SideNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        ),
        drawer: MyDrawer(),
        body: Container(

        ),

      ),
    );
  }
}
