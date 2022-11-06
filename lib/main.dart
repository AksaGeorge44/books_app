import 'package:booksapp/screens/btmnavbar.dart';
import 'package:booksapp/screens/drawer.dart';
import 'package:booksapp/screens/list.dart';
import 'package:booksapp/screens/login.dart';
import 'package:booksapp/screens/register.dart';
import 'package:booksapp/screens/sidenav.dart';
import 'package:booksapp/screens/tabbar.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(App());
}
class App extends StatelessWidget {
   App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("App"),
        ),
        body:BookList1()
      ),
    );
  }
}
