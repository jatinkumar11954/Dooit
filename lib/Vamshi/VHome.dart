import 'package:dooit/Arrangements/SizeModification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VamshiHome extends StatefulWidget{
  @override
  _VamshiHomeState createState() => _VamshiHomeState();
}

class _VamshiHomeState extends State<VamshiHome> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
      appBar: AppBar(
        title: Text("Vamshi's Screens"),
      ),
      body: ListView(
        children: <Widget>[
          Row(children: <Widget>[
            
          ],)
        ],
      
        ),
    ),
    );
  }
}