import 'package:booksapp/screens/drawer.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Center(child: Text("Profile")),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
