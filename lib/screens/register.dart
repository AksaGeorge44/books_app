
import 'package:booksapp/screens/login.dart';
import 'package:booksapp/screens/register.dart';
import 'package:flutter/material.dart';
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  TextEditingController name=TextEditingController();
  TextEditingController author=TextEditingController();
  TextEditingController distributor=TextEditingController();
  TextEditingController publisher=TextEditingController();
  TextEditingController price=TextEditingController();
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
                controller: name,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.book_online_sharp),
                    labelText: "bookname",
                    hintText: "enter bookname",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextField(controller: author,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.book_online_sharp),
                    labelText: "author",
                    hintText: "enter author",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),),
              SizedBox(height: 20,),
              TextField(controller: distributor,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.book_online),
                    labelText: "distributor",
                    hintText: "enter distributor",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),),
              SizedBox(height: 20,),
              TextField(controller: publisher,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.book_rounded),
                    labelText: "publisher",
                    hintText: "enter publisher",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),),
              SizedBox(height: 20,),
              TextField(controller: price,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.book_online_sharp),
                    labelText: "price",
                    hintText: "enter price",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),),
              SizedBox(height: 20,),
              SizedBox(child:
              RaisedButton(onPressed: (){
                var getname=name.text;
                var getauthor=author.text;
                var getdistributor=distributor.text;
                var getpublisher=publisher.text;
                var getprice=price.text;
                print(getname);
                print(getauthor);
                print(getdistributor);
                print(getpublisher);
                print(getprice);

              },
                child: Text("Register"),
                color: Colors.blue,

              ),),
              SizedBox(height: 20,),
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));

              },

                child: Text("Back To Login"),
                color: Colors.blue,
              )

            ],
          ),
        ),
      ),
    );
  }
}
