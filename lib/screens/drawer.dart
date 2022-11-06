import 'package:booksapp/screens/contact.dart';
import 'package:booksapp/screens/home.dart';
import 'package:booksapp/screens/profile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            currentAccountPicture: CircleAvatar(
              child: Text("A"),
            ),
              accountName: Text("aksa"),

              accountEmail: Text("abs@gmail.com")),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            },
            title: Text("Home"),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Contacts()));

            },
            title: Text("Contacts"),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));

            },
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
