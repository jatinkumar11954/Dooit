// import 'package:./ASizeModification.dart';
import '../Arrangements/SizeModification.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../icon/my_flutter_app_icons.dart';
import '../image.dart';

class JatinHome extends StatefulWidget {
  @override
  _JatinHomeState createState() => _JatinHomeState();
}

class _JatinHomeState extends State<JatinHome> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    textStyle() {
      return new TextStyle(color: Colors.black, fontSize: MediaQuery.of(context).size.height/25.0);
    }
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.green),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Colors.green,
      //   accentColor: Colors.orange,
      // ),
      
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height/45,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3.3333,
                  child:ShowImage("2ndscreenlogo"),),
                  new Align(
                    alignment: Alignment.centerRight,
                    widthFactor:MediaQuery.of(context).size.width/380 ,
                    child: Text("                               Delhi Ncr",),
                  ),
                  new Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      MyFlutterApp.circle,
                      color: Colors.cyanAccent,
                      size: SizeConfig.blockSizeHorizontal * 2.5,
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width/5.0,
                      // height:MediaQuery.of(context).size.height*20.0,
                  child:
                  ShowImage("userimg"),),
                ],
              ),
              ),
            ],
            backgroundColor: Colors.white,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child:Text("Workout",style:textStyle()),
                ),
                Tab(
                 child:Text("Packages",style:textStyle()),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Workout(),
              Packages(),
            ],
          ),
        ),
        //   ),
      ),
    );
  }
}

class Workout extends StatelessWidget{
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    home:
    return ListView(
      children: <Widget>[
        Center(
child:
        Text("to be done"),)
      ],
    );
  }

}
class Packages extends StatelessWidget{
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    home:
    return ListView(
      children: <Widget>[
        Center(
child:Text(" to be done"),
        )
        
      ],
    );
  }

}

// class Workout extends StatefulWidget {
//   @override
//   _WorkoutState createState() => _WorkoutState();
// }

// class _WorkoutState extends State<JatinHome> {
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     home:
//     return ListView(
//       children: <Widget>[
//         Text("to be done"),
//       ],
//     );
//   }
// }

// class Packages extends StatefulWidget {
//   @override
//   _PackagesState createState() => _PackagesState();
// }

// class _PackagesState extends State<JatinHome> {
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     home:
//     return ListView(
//       children: <Widget>[
//         Text("to be done"),
//       ],
//     );
//   }
// }
