// import 'package:./ASizeModification.dart';
import '../Arrangements/SizeModification.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../icon/my_flutter_app_icons.dart';

class JatinHome extends StatefulWidget {
  @override
  _JatinHomeState createState() => _JatinHomeState();
}

class _JatinHomeState extends State<JatinHome> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Jatin's Screens"),
        ),
        body: new Stack(
          alignment: Alignment.topRight,
          
          children: <Widget>[
                        new Row(
              children: <Widget>[
                new Align(
                  alignment: Alignment.topRight,
                  child: Text("Delhi Ncr"),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    MyFlutterApp.circle,
                    color: Colors.cyanAccent,
                    size: SizeConfig.blockSizeHorizontal * 3.7,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      //   ),
    );
  }
}
