import 'package:flutter/material.dart';

class BookList extends StatefulWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  TextEditingController name=TextEditingController();
  TextEditingController author=TextEditingController();
  TextEditingController distributor=TextEditingController();
  TextEditingController publisher=TextEditingController();
  TextEditingController price=TextEditingController();
  List names=[];
  List authors=[];
  List distributors=[];
  List publishers=[];
  List prices=[];
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
            this.setState(() {
              names.add(getname);
              authors.add(getauthor);
              distributors.add(getdistributor);
              publishers.add(getpublisher);
              prices.add(getprice);

            });
            print(getname);
            print(getauthor);
            print(getdistributor);
            print(getpublisher);
            print(getprice);

          },
            child: Text("Add"),
            color: Colors.blue,

          ),),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: names.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: ListTile(
                        leading: Icon(Icons.abc_outlined,color: Colors.blue,),
                        trailing: GestureDetector(
                            onTap: (){
                              this.setState(() {
                                names.removeAt(index);
                                authors.removeAt(index);
                                distributors.removeAt(index);
                                publishers.removeAt(index);
                                prices.removeAt(index);
                              });;
                          },
                            child: Icon(Icons.delete,color: Colors.red,)),
                        title: Text(names[index]),
                        subtitle: Text("Author:"+authors[index]+"\n"+"Distributor:"+distributors[index]+"\n"+"Publisher:"+publishers[index]+"\n"+"Price:"+prices[index]),
                      ),
                    );

                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
