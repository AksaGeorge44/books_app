import 'package:booksapp/screens/login.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController uname=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: uname,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box_outlined),
                    labelText: "uname",
                    hintText: "enter username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: password,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  labelText: "password",
                  hintText: "enter password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(child:
              RaisedButton(onPressed: (){
                var getuname=uname.text;
                var getpassword=password.text;
                print(getuname);
                print(getpassword);
              },
                child: Text("Login"),
                color: Colors.blue,

              ),
              ),
              SizedBox(height: 20,),
              RaisedButton(onPressed: (){

              },
              child: Text("Register"),
                color: Colors.blue,

              ),

            ],
          ),
        ),
      ),
    );
  }
}
