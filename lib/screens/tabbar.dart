import 'package:booksapp/screens/contact.dart';
import 'package:booksapp/screens/home.dart';
import 'package:booksapp/screens/profile.dart';
import 'package:flutter/material.dart';

class BookList1 extends StatelessWidget {
   BookList1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
                tabs: [
                  Tab(text: "Home",),
                  Tab(text: "Contacts",),
                  Tab(text: "Proflile",),
                ]),
          ),
          body: TabBarView(
            children: [
              Home(),
              Contacts(),
              Profile(),
            ],
          ),
        ),
      ),
    );
  }
}
