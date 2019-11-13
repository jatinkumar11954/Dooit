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
      return new TextStyle(
          color: Colors.black,
          fontSize: MediaQuery.of(context).size.height / 31.0);
    }

    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.red),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Colors.green,
      //   accentColor: Colors.orange,
      // ),

      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height /
                6.5), // here the desired height
            child: AppBar(
              elevation: 0.0,
              actions: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 35.0,
                      left: MediaQuery.of(context).size.width / 20,
                      right: MediaQuery.of(context).size.width / 20,
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      // verticalDirection: VerticalDirection.down,
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 20.3333,
                          width: MediaQuery.of(context).size.width / 3.3333,
                          child: ShowImage("2ndscreenlogo"),
                        ),
                        new Align(
                          alignment: Alignment.centerRight,
                          heightFactor:
                              MediaQuery.of(context).size.height / 400,
                          widthFactor: MediaQuery.of(context).size.width / 380,
                          child: Text("                   Delhi Ncr",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height / 45,
                                fontWeight: FontWeight.w400,
                              )),
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
                          height: SizeConfig.blockSizeHorizontal * 20.5,
                          width: MediaQuery.of(context).size.width / 7.0,
                          // height:MediaQuery.of(context).size.height*20.0,
                          child: ShowImage("userimg"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              backgroundColor: Colors.white,
              bottom: TabBar(
                tabs: <Widget>[
                  // new Container(
                  //   width: SizeConfig.blockSizeHorizontal * 30.5,
                  Tab(
                    child: Text("Workout", style: textStyle()),
                  ),
                  Tab(
                    child: Text("Packages", style: textStyle()),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Workout(),
              Packages(),
            ],
          ),
        ),
      ),
    );
  }
}

// class Workout extends StatelessWidget {
//   Widget build(BuildContext context) {

//   }
// }

class Packages extends StatelessWidget {
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    home:
    return ListView(
      children: <Widget>[
         new Container(
           height: MediaQuery.of(context).size.height *0.12,
           width: MediaQuery.of(context).size.width *0.98,
          // padding: EdgeInsets.only(
          //   top: SizeConfig.blockSizeVertical*2,
          //   left: SizeConfig.blockSizeHorizontal*2,
          //   right: SizeConfig.blockSizeVertical*2,
          // ),
          child: Row(
            children: <Widget>[
              new Container(
                height: SizeConfig.blockSizeVertical*8,
                width:  SizeConfig.blockSizeHorizontal * 55.5,
                //   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 14,
                //   left: MediaQuery.of(context).size.width/5,),
                padding: EdgeInsets.only(
                  // top: MediaQuery.of(context).size.height / 39,
                  left:  SizeConfig.blockSizeHorizontal * 1.7,
                ),
                child: Column(
                  children: <Widget>[
                    Text('GOLD TRAINER PACKS',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:  SizeConfig.blockSizeVertical * 2.6,
                          fontWeight: FontWeight.w600,
                        ),),
                     Text('Cult Galleria ,                                           ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,

                        fontSize: SizeConfig.blockSizeVertical * 1.7,
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                // decoration: n,
                height: SizeConfig.blockSizeVertical*8,
                width: SizeConfig.blockSizeHorizontal * 41,
                //   paddi3ng: EdgeInsets.only(top: MediaQuery.of(context).size.height / 14,
                //   left: MediaQuery.of(context).size.width/5,),

                padding: EdgeInsets.only(
                  // top: MediaQuery.of(context).size.height / 550,
                  left:  SizeConfig.blockSizeHorizontal * 1,
                  // bottom:MediaQuery.of(context).size.height  *0.8,
                ),
                child: Column(
                  children: <Widget>[
                  //  RaisedButton(
                  //    padding: EdgeInsets.only(top:0.0,bottom:0.0,),
                  //    color: Colors.black,
                  //    child:
                      Text('      All CENTERS',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,

                          fontSize: SizeConfig.blockSizeVertical * 2.6,
                        ),),
                  ],
                ),
              ),
            ],
          ),   
          
        ),
        new Container(
           height: MediaQuery.of(context).size.height*0.15,
           width: MediaQuery.of(context).size.width*0.95,
          alignment: Alignment.topLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height* 0.12,
                      width: MediaQuery.of(context).size.height* 0.20,
                      child: RaisedButton(
                      color: Colors.white,
                      elevation: 1.0,
                       child: Column(
                        
                         children: <Widget>[
                           Text('5 Sessions',
                    style:TextStyle(
                      color:Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize:SizeConfig.blockSizeVertical*2.5,
                    ),
                      ),
                    Text('₹ 7990 ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(0.6),
                               decoration: TextDecoration.lineThrough,

                               fontSize: 15.0,
                    ),),
                    Text('₹ 6990 ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(1.0),
                               fontSize: 22.0,
                    ),),
                    Text('₹ 1398/session ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(0.6),
                               fontSize: 12.0,
                    ),),
                         ],
                       ),
                    
                    onPressed: (){},
                    ),
                    ),                    
                  ],
                ),
              ),
              new Container(               
                child: Column(
                  children: <Widget>[
                     Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height* 0.12,
                      width: MediaQuery.of(context).size.height* 0.20,
                      child: RaisedButton(
                      color: Colors.white,
                      elevation: 1.0,
                       child: Column(
                        
                         children: <Widget>[
                           Text('11 Sessions',
                    style:TextStyle(
                      color:Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize:SizeConfig.blockSizeVertical*2.5,
                    ),
                      ),
                    Text('₹ 17590 ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(0.6),
                               decoration: TextDecoration.lineThrough,

                               fontSize: 15.0,
                    ),),
                    Text('₹ 12990 ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(1.0),
                               fontSize: 22.0,
                    ),),
                    Text('₹ 1180/session ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(0.6),
                               fontSize: 12.0,
                    ),),
                         ],
                       ),
                    
                    onPressed: (){},
                    ),
                    ),                    
                  ],
                ),
                    ],
                ),
              ),
              new Container(
                
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height* 0.12,
                      width: MediaQuery.of(context).size.height* 0.20,
                      child: RaisedButton(
                      color: Colors.white,
                      elevation: 1.0,
                       child: Column(
                        
                         children: <Widget>[
                           Text('25 Sessions',
                    style:TextStyle(
                      color:Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize:SizeConfig.blockSizeVertical*2.5,
                    ),
                      ),
                    Text('₹ 39990 ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(0.6),
                               decoration: TextDecoration.lineThrough,

                               fontSize: 15.0,
                    ),),
                    Text('₹ 25990 ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(1.0),
                               fontSize: 22.0,
                    ),),
                    Text('₹ 1039/session ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(0.6),
                               fontSize: 12.0,
                    ),),
                         ],
                       ),
                    
                    onPressed: (){},
                    ),
                    ),                    
                  ],
                ),
              ),
            ],
          ),
        ),
        new Container(
          height: MediaQuery.of(context).size.height *0.12,
          width: MediaQuery.of(context).size.width*0.95,          
          child: Row(
            children: <Widget>[
              new Container(
                height: SizeConfig.blockSizeVertical*8,
                width:  SizeConfig.blockSizeHorizontal * 55.5,
                padding: EdgeInsets.only(
                  left:  SizeConfig.blockSizeHorizontal * 1.7,
                ),
                child: Column(
                  children: <Widget>[
                    Text('SILVER TRAINER PACKS',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:  SizeConfig.blockSizeVertical * 2.6,
                          fontWeight: FontWeight.w600,
                        ),),
                    Text('Cult Galleria ,                                           ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,

                        fontSize: SizeConfig.blockSizeVertical * 1.7,
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                height: SizeConfig.blockSizeVertical*8,
                width: SizeConfig.blockSizeHorizontal * 41,
                padding: EdgeInsets.only(
                  left:  SizeConfig.blockSizeHorizontal * 1,                ),
                child: Column(
                  children: <Widget>[
                      Text('All CENTERS',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,

                          fontSize: SizeConfig.blockSizeVertical * 2.6,
                        ),),
                  ],
                ),
              ),
            ],
          ),   
          
        ),
           new Container(
           height: MediaQuery.of(context).size.height*0.15,
           width: MediaQuery.of(context).size.width*0.95,
          alignment: Alignment.topLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height* 0.12,
                      width: MediaQuery.of(context).size.height* 0.20,
                      child: RaisedButton(
                      color: Colors.white,
                      elevation: 1.0,
                       child: Column(
                        
                         children: <Widget>[
                           Text('5 Sessions',
                    style:TextStyle(
                      color:Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize:SizeConfig.blockSizeVertical*2.5,
                    ),
                      ),
                    Text('₹ 7990 ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(0.6),
                               decoration: TextDecoration.lineThrough,

                               fontSize: 15.0,
                    ),),
                    Text('₹ 6990 ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(1.0),
                               fontSize: 22.0,
                    ),),
                    Text('₹ 1398/session ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(0.6),
                               fontSize: 12.0,
                    ),),
                         ],
                       ),
                    
                    onPressed: (){},
                    ),
                    ),                    
                  ],
                ),
              ),
              new Container(               
                child: Column(
                  children: <Widget>[
                     Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height* 0.12,
                      width: MediaQuery.of(context).size.height* 0.20,
                      child: RaisedButton(
                      color: Colors.white,
                      elevation: 1.0,
                       child: Column(
                        
                         children: <Widget>[
                           Text('11 Sessions',
                    style:TextStyle(
                      color:Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize:SizeConfig.blockSizeVertical*2.5,
                    ),
                      ),
                    Text('₹ 17590 ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(0.6),
                               decoration: TextDecoration.lineThrough,

                               fontSize: 15.0,
                    ),),
                    Text('₹ 12990 ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(1.0),
                               fontSize: 22.0,
                    ),),
                    Text('₹ 1180/session ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(0.6),
                               fontSize: 12.0,
                    ),),
                         ],
                       ),
                    
                    onPressed: (){},
                    ),
                    ),                    
                  ],
                ),
                    ],
                ),
              ),
              new Container(
                
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height* 0.12,
                      width: MediaQuery.of(context).size.height* 0.20,
                      child: RaisedButton(
                      color: Colors.white,
                      elevation: 1.0,
                       child: Column(
                        
                         children: <Widget>[
                           Text('25 Sessions',
                    style:TextStyle(
                      color:Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize:SizeConfig.blockSizeVertical*2.5,
                    ),
                      ),
                    Text('₹ 39990 ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(0.6),
                               decoration: TextDecoration.lineThrough,

                               fontSize: 15.0,
                    ),),
                    Text('₹ 25990 ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(1.0),
                               fontSize: 22.0,
                    ),),
                    Text('₹ 1039/session ',
                             style: TextStyle(
                               color: Colors.black.withOpacity(0.6),
                               fontSize: 12.0,
                    ),),
                         ],
                       ),
                    
                    onPressed: (){},
                    ),
                    ),                    
                  ],
                ),
              ),
            ],
          ),
        ),
        Image.asset('image/poster.png'),
      ],
    );
  }
}

class Workout extends StatefulWidget {
  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  int photoIndex = 1;

  List<String> photos = [
    'image/gym_pic2.png',
    'image/gym_pic1.png',
  ];

  bool day = false;
  bool night = false;

  void _previousImage() {
    setState(() {
      photoIndex = 0;
      // night = !day;
      night = day == false ? true : false;
      day = night == true ? true : false;
      night = photoIndex == 0 ? true : false;
      day = photoIndex == 1 ? false : true;
    });
  }

  void _nextImage() {
    setState(() {
      // day = !night;
      //  night=true;
      photoIndex = 1;
      day = night == true ? false : true;
      night = day == false ? false : true;
      day = photoIndex == 1 ? false : true;
      night = photoIndex == 0 ? true : false;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    home:
    return ListView(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 38,
            left: MediaQuery.of(context).size.width / 20,
            right: MediaQuery.of(context).size.width / 80,
          ),
          child: Row(
            children: <Widget>[
              new Container(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width / 2.2,
                //   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 14,
                //   left: MediaQuery.of(context).size.width/5,),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                    topLeft: new Radius.circular(10.0),
                    bottomLeft: new Radius.circular(10.0),
                  ),
                  color: Colors.deepPurple[600],
                ),

                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 39,
                  left: MediaQuery.of(context).size.width / 17,
                ),
                child: Text('ACTIVE PACKS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height / 43,
                    )),
              ),
              new Container(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width / 2.2,
                //   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 14,
                //   left: MediaQuery.of(context).size.width/5,),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                    topRight: new Radius.circular(10.0),
                    bottomRight: new Radius.circular(10.0),
                  ),
                  color: Colors.deepPurple[400],
                ),

                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 70,
                  left: MediaQuery.of(context).size.width / 27,
                ),
                child: Text('5 sliver Trainer Session(ST)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height / 40,
                    )),
              ),
            ],
          ),
        ),
        new Container(
          height: MediaQuery.of(context).size.height * 0.09,
          width: MediaQuery.of(context).size.width * 0.98,

          // padding: EdgeInsets.only(
          //   top: MediaQuery.of(context).size.height / 45,
          //   left: MediaQuery.of(context).size.width / 50,
          //   right: MediaQuery.of(context).size.width / 90,
          // ),
          child: Row(
            children: <Widget>[
              new Container(
                height: SizeConfig.blockSizeVertical * 8,
                width: SizeConfig.blockSizeHorizontal * 55.5,
                //   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 14,
                //   left: MediaQuery.of(context).size.width/5,),
                padding: EdgeInsets.only(
                  // top: MediaQuery.of(context).size.height / 39,
                  left: SizeConfig.blockSizeHorizontal * 1.7,
                ),
                child: Column(
                  children: <Widget>[
                    Text('  PREFERED CENTER',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.blockSizeVertical * 2.6,
                          fontWeight: FontWeight.w600,
                        )),
                    Text(
                      'Cult Galleria                  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.blockSizeVertical * 1.7,
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                height: SizeConfig.blockSizeVertical * 8,
                width: SizeConfig.blockSizeHorizontal * 41,
                padding: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 1,
                ),
                child: Column(
                  children: <Widget>[
                    Text('      All CENTERS',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.blockSizeVertical * 2.6,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        new Divider(),
        new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    padding: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 5.6,
                      right: SizeConfig.blockSizeHorizontal * 5.6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    child: Text('Today',
                        style: TextStyle(
                            color: day ? Colors.deepPurple[300] : Colors.white,
                            fontSize: SizeConfig.blockSizeVertical * 2.6)),
                    onPressed: _nextImage,
                    elevation: 0.0,
                    color: day ? Colors.white : Colors.purple,
                    disabledColor: Colors.white,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 5.6,
                      right: SizeConfig.blockSizeHorizontal * 5.6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    child: Text('Tommorow',
                        style: TextStyle(
                            color: day ? Colors.white : Colors.deepPurple[300],
                            fontSize: SizeConfig.blockSizeVertical * 2.6)),
                    onPressed: _previousImage,
                    elevation: 5.0,
                    color: night ? Colors.purple : Colors.white,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 5.6,
                      right: SizeConfig.blockSizeHorizontal * 5.6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    child: Text('Friday',
                        style: TextStyle(
                            color: Colors.deepPurple[300],
                            fontSize: SizeConfig.blockSizeVertical * 2.6)),
                    color: Colors.white,
                    disabledColor: Colors.white,
                  )
                ],
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: DecorationImage(
                          image: AssetImage(photos[photoIndex]),
                          fit: BoxFit.fill)),
                  height: SizeConfig.blockSizeVertical * 25.0,
                  width: SizeConfig.blockSizeHorizontal * 80.0,
                ),
              ),
              new Container(
                 padding: EdgeInsets.only(
            // top: MediaQuery.of(context).size.height / 38,
            left: MediaQuery.of(context).size.width / 20,
            right: MediaQuery.of(context).size.width / 80,
          ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    padding: EdgeInsets.only(
                      top: SizeConfig.blockSizeVertical*2,
                      left: SizeConfig.blockSizeHorizontal * 2.6,
                      right: SizeConfig.blockSizeHorizontal * 2.6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(9.0),
                    ),
                    child: Text('7:00Am',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeVertical * 1.9)),
                    color: Colors.white,
                    disabledColor: Colors.white,
                    elevation: 5.0,),
                    RaisedButton(
                    padding: EdgeInsets.only(
                      top: SizeConfig.blockSizeVertical*2,
                      left: SizeConfig.blockSizeHorizontal * 2.6,
                      right: SizeConfig.blockSizeHorizontal * 2.6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(9.0),
                    ),
                    child: Text('6:00Am',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeVertical * 1.9)),
                    color: Colors.white,
                    disabledColor: Colors.white,
                    elevation: 5.0,),
                    RaisedButton(
                    padding: EdgeInsets.only(
                      top: SizeConfig.blockSizeVertical*2,
                      left: SizeConfig.blockSizeHorizontal * 2.6,
                      right: SizeConfig.blockSizeHorizontal * 2.6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(9.0),
                    ),
                    child: Text('more',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeVertical * 1.9)),
                    color: Colors.white,
                    disabledColor: Colors.white,
                    elevation: 5.0,),
                    RaisedButton(
                    padding: EdgeInsets.only(
                      top: SizeConfig.blockSizeVertical*2,
                      left: SizeConfig.blockSizeHorizontal * 2.6,
                      right: SizeConfig.blockSizeHorizontal * 2.6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(9.0),
                    ),
                    child: Text('6:00Am',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeVertical * 1.9)),
                    color: Colors.white,
                    disabledColor: Colors.white,
                    elevation: 5.0,),

                ],
              ))
            ],
          ),
        ),
        Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: DecorationImage(
                          image: AssetImage('image/how_it_works.png'),
                          fit: BoxFit.fill)),
                  height: SizeConfig.blockSizeVertical * 35.0,
                  width: SizeConfig.blockSizeHorizontal * 98.0,
                ),
              ),
      ],
    );
  }
}

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
