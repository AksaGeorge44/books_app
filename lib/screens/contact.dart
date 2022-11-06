import 'package:booksapp/screens/drawer.dart';
import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Center(child: Text("Contact")),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
