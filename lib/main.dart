import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.indigo,
      accentColor: Colors.indigoAccent,
    ),
  ));
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  AnimationController _pageAnimationController;  // for page animation
  Animation<double> _pageAnimation;              // for page animation

  @override
  void initstate()
  {
    super.initState();
    _pageAnimationController = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500),
    );  // instances
    _pageAnimation = new CurvedAnimation(
        parent: _pageAnimationController,
        curve: Curves.easeIn,
    );

    _pageAnimation.addListener(() {
      this.setState(() {
       _pageAnimationController.forward();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: new SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
            padding: const EdgeInsets.only(top:50.0,left: 30.0,right: 30.0,bottom: 30.0),
            child:  new Text("My Portfolio",style: new TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 34,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
            ),
            CircleAvatar(minRadius: 20.0,backgroundImage: AssetImage("Images/preparation.jpg"),maxRadius: 100,
            ), //will pass my image here
            new Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top:30.0,left: 30.0,right: 30.0),
            child: Text("Growing to become a Developer!",style: new TextStyle(
              decoration: TextDecoration.underline,
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
                      padding: const EdgeInsets.only(top:0.0,left: 10,right: 10,bottom: 0),
                      alignment: Alignment.topLeft,
                      child: new Text("ISHWAM",style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff187bcd), //blue Color
                      ),),
                    ),
                    new Container(
                      padding: const EdgeInsets.only(top:0.0,left: 10,right: 10,bottom: 10),
                      alignment: Alignment.topLeft,
                      child: new Text("GARG",style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff187bcd), //blue Color
                      ),),
                    ),
                     new Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top:0.0,left: 15.0,right: 15.0,bottom:15),
                      child: new Text("I am a 2nd year CSE Student. I have passed my 12th in PCM with 92% in year 2020 from DPSG MEERUT ROAD.", style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),),
                    ), // description

                      new Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0,left: 5,right: 5),
                      child:
                      Row(children: <Widget>[
                        Icon(Icons.school,color: Colors.white70 ,size: 30,),
                        Text(" AKGEC GHAZIABAD ",style: TextStyle(color: Colors.white,fontSize: 20,),),
                      ]),
                    ), //College
                  new Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top:10.0,bottom: 10.0,left: 5,right: 5),
                    child: 
                    Row(children: <Widget>[
                    Icon(Icons.email,color: Colors.white70,size: 30,),
                    Text(" ishwamgarg19@gmail.com ",style: TextStyle(color: Colors.white,fontSize: 20,),),
                    ]),
                  ),//email
                    new Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0,left: 5,right: 5),
                      child:
                    Row(children: <Widget>[
                    Icon(Icons.phone,color: Colors.white70,size: 30,),
                    Text(" +91-8851850004",style: TextStyle(color: Colors.white,fontSize: 20,),),
                    ]),
                    ),// phone
                    new Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0,left: 5,right: 5),
                      child:
                  Row(children: <Widget>[
                    Icon(Icons.location_on,color: Colors.white70,size: 30,),
                    Text(" India ",style: TextStyle(color: Colors.white,fontSize: 20,),),
                  ]),
                  ),
                new Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top:10.0,bottom: 10.0,left: 5,right: 5),
                  child:
                  Row(children: <Widget>[
                    Icon(Icons.access_time,color: Colors.white70,size: 30,),
                    Text(" 5pm to 11pm ",style: TextStyle(color: Colors.white,fontSize: 20,),),
                  ]),
                ),
                    new Container(
                      padding: const EdgeInsets.only(top:0.0,left: 10,right: 10,bottom: 10),
                      alignment: Alignment.topLeft,
                      child: new Text("SKILLS",style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff187bcd), //blue Color
                      ),),
                    ),//skills
                    new Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0,left: 5,right: 5),
                      child:
                      Row(children: <Widget>[
                        Icon(Icons.code,color: Colors.white70 ,size: 30,),
                        Text(" C++ ",style: TextStyle(color: Colors.white,fontSize: 20,),),
                      ]),
                    ), //C++
                    new Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0,left: 5,right: 5),
                      child:
                      Row(children: <Widget>[
                        Icon(Icons.code,color: Colors.white70,size: 30,),
                        Text(" Python ",style: TextStyle(color: Colors.white,fontSize: 20,),),
                      ]),
                    ),//Python
                    new Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0,left: 5,right: 5),
                      child:
                      Row(children: <Widget>[
                        Icon(Icons.code,color: Colors.white70,size: 30,),
                        Text(" HTML ",style: TextStyle(color: Colors.white,fontSize: 20,),),
                      ]),
                    ),// HTML
                    new Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0,left: 5,right: 5),
                      child:
                      Row(children: <Widget>[
                        Icon(Icons.code,color: Colors.white70,size: 30,),
                        Text(" CSS ",style: TextStyle(color: Colors.white,fontSize: 20,),),
                      ]),
                    ),//CSS
                    new Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0,left: 5,right: 5),
                      child:
                      Row(children: <Widget>[
                        Icon(Icons.android,color: Colors.white70,size: 30,),
                        Text(" Android Development",style: TextStyle(color: Colors.white,fontSize: 20,),),
                      ]),
                    ),//Android dev
                    new Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0,left: 5,right: 5),
                      child:
                      Row(children: <Widget>[
                        Icon(Icons.android,color: Colors.white70,size: 30,), // add flutter icon
                        Text(" FLUTTER ",style: TextStyle(color: Colors.white,fontSize: 20,),),
                      ]),
                    ),//Flutter
                    new Container(
                      padding: const EdgeInsets.only(top:0.0,left: 10,right: 10,bottom: 10),
                      alignment: Alignment.topLeft,
                      child: new Text("SOCIAL",style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff187bcd), //blue Color
                      ),),
                    ), //Social
                    new Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top:0.0,left: 15.0,right: 15.0,bottom:15),
                      child: new Text("I Am Available On Instagram,Facebook,Github. Usernames are Below: ", style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),),
                    ),
                ],)
    ), // container
                ],
            ),
    )
    );
  }
}

