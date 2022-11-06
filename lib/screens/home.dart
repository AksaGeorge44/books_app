import 'package:booksapp/screens/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Center(child: Text("Hello")),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
