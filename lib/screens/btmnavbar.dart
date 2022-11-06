import 'package:booksapp/screens/contact.dart';
import 'package:booksapp/screens/home.dart';
import 'package:booksapp/screens/profile.dart';
import 'package:flutter/material.dart';

class BtmNav extends StatefulWidget {
  const BtmNav({Key? key}) : super(key: key);

  @override
  State<BtmNav> createState() => _BtmNavState();
}

class _BtmNavState extends State<BtmNav> {
  int _currentindex=0;
  List mypages=[Home(),Contacts(),Profile()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: mypages[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            this.setState(() {
              _currentindex=index;
            });
          },
            currentIndex: _currentindex,
            items: [
              BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "Contacts",
                  icon: Icon(Icons.contact_phone_outlined)),
              BottomNavigationBarItem(
                  label:"Profile",
                  icon: Icon(Icons.home_filled)),

            ]),
      ),
    );
  }
}
