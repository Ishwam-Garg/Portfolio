import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.amber,
      accentColor: Colors.amberAccent,
    ),
  ));
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: new SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
            padding: const EdgeInsets.only(top:50.0,left: 30.0,right: 30.0,bottom: 30.0),
            child:  new Text("Ishwam (Developer)",style: new TextStyle(
              fontSize: 34.0,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
            ),
            CircleAvatar(radius: 100.0,), //will pass my image here
            new Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top:30.0,left: 30.0,right: 30.0),
            child: Text("Growing till I become a Developer!",style: new TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ),
            new Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(30.0),
              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                  new Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10.0),
                    child: 
                    Row(children: <Widget>[
                    Icon(Icons.email,color: Colors.white,size: 30,),
                    Text("ishwamgarg19@gmail.com",style: TextStyle(color: Colors.white,fontSize: 20,),),
                    ]),
                  ),
                    new Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10.0),
                      child:
                    Row(children: <Widget>[
                    Icon(Icons.phone,color: Colors.white,size: 30,),
                    Text("+91 8851850004",style: TextStyle(color: Colors.white,fontSize: 20,),),
                    ]),
                    ),
                    new Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10.0),
                      child:
                  Row(children: <Widget>[
                    Icon(Icons.location_on,color: Colors.white,size: 30,),
                    Text("India",style: TextStyle(color: Colors.white,fontSize: 20,),),
                  ]),
                  ),
                new Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10.0),
                  child:
                    Row(children: <Widget>[
                    Icon(Icons.account_circle,color: Colors.white,size: 30,),
                    Text("ishwam_garg",style: TextStyle(color: Colors.white,fontSize: 20,),),
                  ]),
                ),
                new Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10.0),
                  child:
                  Row(children: <Widget>[
                    Icon(Icons.access_time,color: Colors.white,size: 30,),
                    Text("5pm to 1 am",style: TextStyle(color: Colors.white,fontSize: 20,),),
                  ]),
                ),
                ],)
    ), // container
                ],
            ),
    )
    );
  }
}

