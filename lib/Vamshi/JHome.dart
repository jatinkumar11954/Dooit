// import 'package:./ASizeModification.dart';
import '../Arrangements/SizeModification.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../icon/my_flutter_app_icons.dart';
import '../image.dart';
import 'package:flutter/rendering.dart';
// import 'Allcenters.dart';

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
              Mquery(),
            ],
          ),
        ),
      ),
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
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.98,

          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 45,
          ),
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
                height: SizeConfig.blockSizeVertical*8,
                width: SizeConfig.blockSizeHorizontal * 41,

                padding: EdgeInsets.only(
                  left:  SizeConfig.blockSizeHorizontal * 1,
                ),

                  child: Material(
                    child:InkWell(
                      onTap:(){
                        // Navigator.push(context, 
                        // MaterialPageRoute(
                        //   builder: (context)=>Allcenters(),));
                        
                      },
                      
                       child: new Container(
                         padding:EdgeInsets.only(
                           top: MediaQuery.of(context).size.height*0.02,
                         ),
                       child: 
                       Text('      All CENTERS',
                         style: TextStyle(
                           color: Colors.red,
                           fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.blockSizeVertical * 2.6,
                   ),),
                      ),
                      
                    ),
                ),
              ),
            ],
          ),   
        ),
              
        //       new Container(
        //         height: SizeConfig.blockSizeVertical * 8,
        //         width: SizeConfig.blockSizeHorizontal * 39,
        //         padding: EdgeInsets.only(
        //           left: SizeConfig.blockSizeHorizontal * 0.98,
        //         ),
        //         child: Column(
        //           children: <Widget>[
        //             Text('      All CENTERS',
        //                 style: TextStyle(
        //                   color: Colors.red,
        //                   fontWeight: FontWeight.w600,
        //                   fontSize: SizeConfig.blockSizeVertical * 2.6,
        //                 )),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
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
                    elevation: 5.0,
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
                          top: SizeConfig.blockSizeVertical * 1,
                          left: SizeConfig.blockSizeHorizontal * 2.6,
                          right: SizeConfig.blockSizeHorizontal * 2.6,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(9.0),
                        ),
                        onPressed: () {},
                        child: Text('7:00Am',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeVertical * 1.9)),
                        color: Colors.white,
                        disabledColor: Colors.white,
                        elevation: 4.0,
                      ),
                      RaisedButton(
                        padding: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 1,
                          left: SizeConfig.blockSizeHorizontal * 2.6,
                          right: SizeConfig.blockSizeHorizontal * 2.6,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(9.0),
                        ),
                        onPressed: () {},
                        child: Text('6:00Am',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeVertical * 1.9)),
                        color: Colors.white,
                        // disabledColor: Colors.white,
                        elevation: 4.0,
                      ),
                      RaisedButton(
                        padding: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 1,
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
                        elevation: 5.0,
                      ),
                      RaisedButton(
                        padding: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 1,
                          left: SizeConfig.blockSizeHorizontal * 2.6,
                          right: SizeConfig.blockSizeHorizontal * 2.6,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(9.0),
                        ),
                        onPressed: () {},
                        child: Text('6:00Am',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeVertical * 1.9)),
                        color: Colors.white,
                        disabledColor: Colors.white,
                        elevation: 4.0,
                      ),
                    ],
                  ))
            ],
          ),
        ),
        new Divider(),
        new Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.98,
          child: Row(
            children: <Widget>[
              new Container(
                height: SizeConfig.blockSizeVertical * 6,
                width: SizeConfig.blockSizeHorizontal * 47,
                child: Column(
                  children: <Widget>[
                    Text(
                      'UPCOMING',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: SizeConfig.blockSizeVertical * 2.6,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        new Container(
          height: MediaQuery.of(context).size.height * 0.14,
          width: MediaQuery.of(context).size.width * 0.100,
          child: Row(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.06,
                ),
                height: MediaQuery.of(context).size.height * 0.10,
                // width: MediaQuery.of(context).size.width*0.3,

                child: Row(
                  children: <Widget>[
                    Image.asset('image/row3image.png'),
                  ],
                ),
              ),
              new Container(
                height: MediaQuery.of(context).size.height * 0.14,
                // width: MediaQuery.of(context).size.width*0.4,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Gold Trainer Sessions          ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeVertical * 2.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Wed 10 Oct,8:00 A.M                         ',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.blockSizeVertical * 2.1,
                      ),
                    ),
                    Text(
                      '   Fusion Gym                                            ',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.blockSizeVertical * 2.1,
                      ),
                    ),
                    FlatButton(
                      onPressed: () => cancel(context),
                      child: Text(
                        '    CANCEL                                 ',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: SizeConfig.blockSizeVertical * 2.1,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        new Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.95,
          child: Row(
            children: <Widget>[
              new Container(
                height: SizeConfig.blockSizeVertical * 5,
                width: SizeConfig.blockSizeHorizontal * 47,
                child: Column(
                  children: <Widget>[
                    Text(
                      'COMPLETED',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: SizeConfig.blockSizeVertical * 2.6,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        new Container(
          height: MediaQuery.of(context).size.height * 0.12,
          width: MediaQuery.of(context).size.width * 0.100,
          child: Row(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.06,
                ),
                height: MediaQuery.of(context).size.height * 0.09,
                // width: MediaQuery.of(context).size.width*0.3,

                child: Row(
                  children: <Widget>[
                    Image.asset('image/row3image.png'),
                  ],
                ),
              ),
              new Container(
                height: MediaQuery.of(context).size.height * 0.09,
                // width: MediaQuery.of(context).size.width*0.4,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Gold Trainer Sessions          ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeVertical * 2.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Sun 27 Oct,8:00 A.M                         ',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.blockSizeVertical * 2.1,
                      ),
                    ),

                    Text(
                      '   Fusion Gym                                            ',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.blockSizeVertical * 2.1,
                      ),
                    ),
                    // Text('    0/10 left                                 ',

                    // style:TextStyle(
                    //   color: Colors.red,
                    //   fontSize: SizeConfig.blockSizeVertical * 2.4,
                    //   fontWeight: FontWeight.w700,
                    // ),),
                  ],
                ),
              ),
            ],
          ),
        ),
        new Container(
          height: MediaQuery.of(context).size.height * 0.12,
          width: MediaQuery.of(context).size.width * 0.100,
          child: Row(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.06,
                ),
                height: MediaQuery.of(context).size.height * 0.09,
                // width: MediaQuery.of(context).size.width*0.3,

                child: Row(
                  children: <Widget>[
                    Image.asset('image/row3image.png'),
                  ],
                ),
              ),
              new Container(
                height: MediaQuery.of(context).size.height * 0.09,
                // width: MediaQuery.of(context).size.width*0.4,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Gold Trainer Sessions           ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeVertical * 2.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      ' Tue 29 Nov,8:00 A.M                          ',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.blockSizeVertical * 2.1,
                      ),
                    ),

                    Text(
                      '    Fusion Gym                                            ',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.blockSizeVertical * 2.1,
                      ),
                    ),
                    // Text('    0/10 left                                 ',

                    // style:TextStyle(
                    //   color: Colors.red,
                    //   fontSize: SizeConfig.blockSizeVertical * 2.4,
                    //   fontWeight: FontWeight.w700,
                    // ),),
                  ],
                ),
              ),
            ],
          ),
        ),
        new Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.03,
          ),
          child: RaisedButton(
            elevation: 1.0,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Text('Show more +'),
              ],
            ),
            onPressed: () {},
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
            width: SizeConfig.blockSizeHorizontal * 100.0,
          ),
        ),
      ],
    );
  }

  cancel(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return new Container(
            height: MediaQuery.of(context).size.height * 0.38,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.02,
            ),
            child: Column(
              children: <Widget>[
                new Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.0,
                    left: MediaQuery.of(context).size.width * 0.03,
                  ),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Gold Trainer Sessions',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.height * 0.03,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Wed 30 Oct 6:00 A.M-6:50 A.M ',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontSize:
                                MediaQuery.of(context).size.height * 0.025,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Cult galleria ',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontSize:
                                MediaQuery.of(context).size.height * 0.025,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.04,
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  color: Colors.grey.withOpacity(0.2),
                  height: MediaQuery.of(context).size.height * 0.24,
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Address:                                                           ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '2nd Floor, Galleria Market, DLF Phase 4, Sector 28, Gurugram - 122002 ',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ),
                      RaisedButton(
                        color: Colors.red,
                        padding: EdgeInsets.only(
                          // top:MediaQuery.of(context).size.height*0.3,
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27.0),
                        ),
                        child: Text(
                          'CONFIRM CANCEL',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

class Mquery extends StatefulWidget {
  Mquery({Key key}) : super(key: key);

  _MqueryState createState() => _MqueryState();
}

class _MqueryState extends State<Mquery> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Container(
          padding: EdgeInsets.only(top: 15),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.height * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'GOLD TRAINER PACKS',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.blockSizeVertical * 2.6,
                          ),
                        ),
                        Text(
                          'Cult Galleria',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.blockSizeVertical * 1.7,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'All CENTERS',
                          style: TextStyle(
                            fontSize: SizeConfig.blockSizeVertical * 2.6,
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      // onPressed: () =>modal(context),
                      // child:new Text('modal'),
                      color: Colors.white,
                      elevation: 4.0,
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '5 Sessions',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              //fontSize:SizeConfig.blockSizeVertical*2.5,
                            ),
                          ),
                          Text(
                            '₹ 7990 ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              decoration: TextDecoration.lineThrough,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022,
                            ),
                          ),
                          Text(
                            '₹ 6990 ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(1.0),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.035,
                            ),
                          ),
                          Text(
                            '₹ 1398/session ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () => gym(context),
                    ),
                    RaisedButton(
                      // onPressed: () =>modal(context),
                      // child:new Text('modal'),
                      color: Colors.white,
                      elevation: 4.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '11 Sessions',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              //fontSize:SizeConfig.blockSizeVertical*2.5,
                            ),
                          ),
                          Text(
                            '₹ 17590 ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              decoration: TextDecoration.lineThrough,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022,
                            ),
                          ),
                          Text(
                            '₹ 12990 ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(1.0),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.035,
                            ),
                          ),
                          Text(
                            '₹ 1180/session ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () => gym(context),
                    ),
                    RaisedButton(
                      // onPressed: () =>modal(context),
                      // child:new Text('modal'),
                      color: Colors.white,
                      elevation: 4.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '25 Sessions',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              //fontSize:SizeConfig.blockSizeVertical*2.5,
                            ),
                          ),
                          Text(
                            '₹ 39990 ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              decoration: TextDecoration.lineThrough,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022,
                            ),
                          ),
                          Text(
                            '₹ 25990 ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(1.0),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.035,
                            ),
                          ),
                          Text(
                            '₹ 1039/session ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () => gym(context),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.height * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'SILVER TRAINER PACKS',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.blockSizeVertical * 2.6,
                          ),
                        ),
                        Text(
                          'Cult Galleria',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.blockSizeVertical * 1.7,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'All CENTERS',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.blockSizeVertical * 2.6,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      // onPressed: () =>modal(context),
                      // child:new Text('modal'),
                      color: Colors.white,
                      elevation: 4.0,
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '5 Sessions',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              //fontSize:SizeConfig.blockSizeVertical*2.5,
                            ),
                          ),
                          Text(
                            '₹ 7990 ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              decoration: TextDecoration.lineThrough,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022,
                            ),
                          ),
                          Text(
                            '₹ 6990 ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(1.0),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.035,
                            ),
                          ),
                          Text(
                            '₹ 1398/session ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () => gym(context),
                    ),
                    RaisedButton(
                      // onPressed: () =>modal(context),
                      // child:new Text('modal'),
                      color: Colors.white,
                      elevation: 4.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '11 Sessions',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              //fontSize:SizeConfig.blockSizeVertical*2.5,
                            ),
                          ),
                          Text(
                            '₹ 17590 ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              decoration: TextDecoration.lineThrough,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022,
                            ),
                          ),
                          Text(
                            '₹ 12990 ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(1.0),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.035,
                            ),
                          ),
                          Text(
                            '₹ 1180/session ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () => gym(context),
                    ),
                    RaisedButton(
                      // onPressed: () =>modal(context),
                      // child:new Text('modal'),
                      color: Colors.white,
                      elevation: 4.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '25 Sessions',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              //fontSize:SizeConfig.blockSizeVertical*2.5,
                            ),
                          ),
                          Text(
                            '₹ 39990 ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              decoration: TextDecoration.lineThrough,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022,
                            ),
                          ),
                          Text(
                            '₹ 25990 ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(1.0),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.035,
                            ),
                          ),
                          Text(
                            '₹ 1039/session ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () => gym(context),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width * 0.95,
                child: Image.asset('image/poster.png'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.86,
                child: Text(
                  'ACTIVE PACKAGES',
                  style: TextStyle(
                      fontSize: SizeConfig.blockSizeVertical * 2.6,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.90,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1.0,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Image.asset('image/row3image.png'),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '          Gold Trainer 5 Sessions',
                          style: TextStyle(
                            color: Colors.black,
                            // fontSize:  SizeConfig.blockSizeVertical * 2.6,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '          Fusion Gym',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.w400,
                            //fontSize: SizeConfig.blockSizeVertical * 2.1,
                          ),
                        ),
                        Text(
                          '          4/5 Left',
                          style: TextStyle(
                            color: Colors.red,
                            //fontSize: SizeConfig.blockSizeVertical * 2.6,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.90,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1.0,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Image.asset('image/row3image.png'),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '          Gold Trainer 10 Sessions',
                          style: TextStyle(
                            color: Colors.black,
                            // fontSize:  SizeConfig.blockSizeVertical * 2.6,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '          Fusion Gym',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.w400,
                            //fontSize: SizeConfig.blockSizeVertical * 2.1,
                          ),
                        ),
                        Text(
                          '          Awaiting',
                          style: TextStyle(
                            color: Colors.red,
                            //fontSize: SizeConfig.blockSizeVertical * 2.6,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.90,
                // child: Image.asset('images/poster.png'),
                child: RaisedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Share & earn',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Text(
                            '100 DoDo \n   Coins',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 1.0,
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: Image.asset('image/share&earn.png'),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.86,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'REDEEM DoDo coins',
                          style: TextStyle(
                              fontSize: SizeConfig.blockSizeVertical * 2.6,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        Text(
                          'Cult Galleria',
                          style: TextStyle(
                              fontSize: SizeConfig.blockSizeVertical * 1.7,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )
                      ],
                    ),
                    Text(
                      'All CENTERS',
                      style: TextStyle(
                        fontSize: SizeConfig.blockSizeVertical * 2.6,
                        color: Colors.red,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.86,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Balance                                                  ',
                        style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical * 2.5,
                          color: Colors.red,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: MediaQuery.of(context).size.width * 0.10,
                        child: Image.asset('image/account_dodo.png'),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '120',
                            style: TextStyle(
                              fontSize: SizeConfig.blockSizeVertical * 2.5,
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.86,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('1 Gold Session'),
                          Divider(
                            indent: 2.0,
                            thickness: 2.0,
                            color: Colors.black.withOpacity(0.7),
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                width: MediaQuery.of(context).size.width * 0.10,
                                child: Image.asset('image/account_dodo.png'),
                              ),
                              Text(
                                '150',
                                style: TextStyle(
                                  fontSize: SizeConfig.blockSizeVertical * 2.5,
                                  color: Colors.black.withOpacity(0.7),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('1 Group Session'),
                          Divider(
                            thickness: 1.0,
                            color: Colors.black,
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                width: MediaQuery.of(context).size.width * 0.10,
                                child: Image.asset('image/account_dodo.png'),
                              ),
                              Text(
                                '100',
                                style: TextStyle(
                                  fontSize: SizeConfig.blockSizeVertical * 2.5,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.86,
                  child: Text(
                    'INACTIVE PACKAGES',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: SizeConfig.blockSizeVertical * 2.6,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.90,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1.0,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Image.asset('image/row3image.png'),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '          Gold Trainer 5 Sessions',
                          style: TextStyle(
                            color: Colors.black,
                            // fontSize:  SizeConfig.blockSizeVertical * 2.6,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '          Fusion Gym',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.w400,
                            //fontSize: SizeConfig.blockSizeVertical * 2.1,
                          ),
                        ),
                        Text(
                          '          4/5 Left',
                          style: TextStyle(
                            color: Colors.red,
                            //fontSize: SizeConfig.blockSizeVertical * 2.6,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.90,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1.0,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Image.asset('image/row3image.png'),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '          Gold Trainer 5 Sessions',
                          style: TextStyle(
                            color: Colors.black,
                            // fontSize:  SizeConfig.blockSizeVertical * 2.6,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '          Fusion Gym',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.w400,
                            //fontSize: SizeConfig.blockSizeVertical * 2.1,
                          ),
                        ),
                        Text(
                          '          0/10 Left',
                          style: TextStyle(
                            color: Colors.red,
                            //fontSize: SizeConfig.blockSizeVertical * 2.6,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Center(
                    child: RaisedButton(
                      color: Colors.white,
                      child: Text('Show More +'),
                      onPressed: () {},
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Divider(
                  color: Colors.black38,
                  thickness: 1.5,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Image.asset('image/why_buy_pack.png'),
              )
            ],
          )),
    ]);
  }

  gym(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return new Container(
            height: MediaQuery.of(context).size.height * 0.4,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.02,
            ),
            child: Column(
              children: <Widget>[
                new Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Gold Trainer 5 Sessions Pack                   ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Fusion Gym                                                   ',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  color: Colors.grey.withOpacity(0.2),
                  height: MediaQuery.of(context).size.height * 0.27,
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Address:                                                           ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '2nd Floor, Galleria Market, DLF Phase 4, Sector 28, Gurugram - 122002 ',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ),
                      Text(
                        'Instruction:                                                         ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Pay the amount at Gym center and we will confirm your status as soon as payment is received ',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ),
                      RaisedButton(
                        color: Colors.red,
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27.0),
                        ),
                        child: Text(
                          'PAY AT GYM',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

// class Packages extends StatelessWidget {
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     // home:
//     return ListView(
//       children: <Widget>[
//          new Container(
//            height: MediaQuery.of(context).size.height *0.12,
//            width: MediaQuery.of(context).size.width *0.98,
//           // padding: EdgeInsets.only(
//           //   top: SizeConfig.blockSizeVertical*2,
//           //   left: SizeConfig.blockSizeHorizontal*2,
//           //   right: SizeConfig.blockSizeVertical*2,
//           // ),
//           child: Row(
//             children: <Widget>[
//               new Container(
//                 height: SizeConfig.blockSizeVertical*8,
//                 width:  SizeConfig.blockSizeHorizontal * 55.5,
//                 //   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 14,
//                 //   left: MediaQuery.of(context).size.width/5,),
//                 padding: EdgeInsets.only(
//                   // top: MediaQuery.of(context).size.height / 39,
//                   left:  SizeConfig.blockSizeHorizontal * 1.7,
//                   top: MediaQuery.of(context).size.height*0.02,
//                 ),
//                 child: Column(
//                   children: <Widget>[
//                     Text('GOLD TRAINER PACKS   ',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize:  SizeConfig.blockSizeVertical * 2.6,
//                           fontWeight: FontWeight.w600,
//                         ),),
//                     Text('Cult Galleria ,                                           ',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w400,

//                         fontSize: SizeConfig.blockSizeVertical * 1.7,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               new Container(
//                 // decoration: n,
//                 height: SizeConfig.blockSizeVertical*8,
//                 width: SizeConfig.blockSizeHorizontal * 41,
//                 //   paddi3ng: EdgeInsets.only(top: MediaQuery.of(context).size.height / 14,
//                 //   left: MediaQuery.of(context).size.width/5,),

//                 padding: EdgeInsets.only(
//                   // top: MediaQuery.of(context).size.height / 550,
//                   left:  SizeConfig.blockSizeHorizontal * 1,
//                   // bottom:MediaQuery.of(context).size.height  *0.8,
//                 ),
//                 // child: Column(
//                 //   children: <Widget>[
//                   //  FlatButton(
//                   //    padding: EdgeInsets.only(top:0.0,bottom:0.0,),
//                   //    color: Colors.white,
//                   //    child:
//                   child: Material(
//                     child:InkWell(
//                       onTap:(){
//                         Navigator.push(context,
//                         MaterialPageRoute(
//                           builder: (context)=>Allcenters(),
//                         ));
//                       },

//                        child: new Container(
//                          padding:EdgeInsets.only(
//                            top: MediaQuery.of(context).size.height*0.02,
//                          ),
//                        child:
//                        Text('      All CENTERS',
//                          style: TextStyle(
//                            color: Colors.red,
//                            fontWeight: FontWeight.w600,
//                           fontSize: SizeConfig.blockSizeVertical * 2.6,
//                    ),),
//                       ),

//                     ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         new Container(
//            height: MediaQuery.of(context).size.height*0.15,
//            width: MediaQuery.of(context).size.width*0.95,
//            alignment: Alignment.topLeft,
//             child: Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               new Container(
//                 child: Column(
//                   children: <Widget>[
//                     Container(
//                       height: MediaQuery.of(context).size.height* 0.12,
//                       width: MediaQuery.of(context).size.height* 0.20,
//                       child: RaisedButton(
//                       // onPressed: () =>modal(context),
//                       // child:new Text('modal'),

//                       color: Colors.white,
//                       elevation: 4.0,
//                        child: Column(

//                          children: <Widget>[
//                       Text('5 Sessions',
//                       style:TextStyle(
//                       color:Colors.black,
//                       fontWeight:FontWeight.w700,
//                       fontSize:SizeConfig.blockSizeVertical*2.5,
//                     ),
//                       ),
//                     Text('₹ 7990 ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(0.6),
//                                decoration: TextDecoration.lineThrough,
//                                fontSize: MediaQuery.of(context).size.height*0.022,
//                     ),),
//                     Text('₹ 6990 ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(1.0),
//                                fontSize: MediaQuery.of(context).size.height*0.035,
//                     ),),
//                     Text('₹ 1398/session ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(0.6),
//                                fontSize: MediaQuery.of(context).size.height*0.016,
//                     ),),

//                          ],
//                        ),
//                        onPressed: () =>gym(context),

//                     ),
//                     ),
//                   ],
//                 ),
//               ),
//               new Container(
//                 child: Column(
//                   children: <Widget>[
//                     Container(
//                       height: MediaQuery.of(context).size.height* 0.12,
//                       width: MediaQuery.of(context).size.height*0.20,
//                       child: RaisedButton(
//                       color: Colors.white,
//                       elevation: 4.0,
//                        child: Column(

//                          children: <Widget>[
//                            Text('11 Sessions',
//                     style:TextStyle(
//                       color:Colors.black,
//                       fontWeight:FontWeight.w700,
//                       fontSize:SizeConfig.blockSizeVertical*2.5,
//                     ),
//                       ),
//                     Text('₹ 17590 ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(0.6),
//                                decoration: TextDecoration.lineThrough,

//                                fontSize: MediaQuery.of(context).size.height*0.022,
//                     ),),
//                     Text('₹ 12990 ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(1.0),
//                                fontSize: MediaQuery.of(context).size.height*0.035,
//                     ),),
//                     Text('₹ 1180/session ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(0.6),
//                                fontSize: MediaQuery.of(context).size.height*0.018,
//                     ),),
//                          ],
//                        ),

//                     onPressed: ()=>gym(context),
//                     ),
//                     ),
//                   ],
//                 ),
//               ),
//            new Container(
//                 child: Column(
//                   children: <Widget>[
//                     Container(
//                       height: MediaQuery.of(context).size.height* 0.12,
//                       width: MediaQuery.of(context).size.height* 0.20,
//                       child: RaisedButton(
//                       color: Colors.white,
//                       elevation: 4.0,
//                        child: Column(

//                          children: <Widget>[
//                            Text('25 Sessions',
//                     style:TextStyle(
//                       color:Colors.black,
//                       fontWeight:FontWeight.w700,
//                       fontSize:SizeConfig.blockSizeVertical*2.5,
//                     ),
//                       ),
//                     Text('₹ 39990 ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(0.6),
//                                decoration: TextDecoration.lineThrough,

//                                fontSize: MediaQuery.of(context).size.height*0.022,
//                     ),),
//                     Text('₹ 25990 ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(1.0),
//                                fontSize: MediaQuery.of(context).size.height*0.035,
//                     ),),
//                     Text('₹ 1039/session ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(0.6),
//                                fontSize: MediaQuery.of(context).size.height*0.018,
//                     ),),
//                          ],
//                        ),

//                     onPressed: () =>gym(context),
//                     ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         new Container(
//            height: MediaQuery.of(context).size.height *0.09,
//            width: MediaQuery.of(context).size.width *0.98,
//           // padding: EdgeInsets.only(
//           //   top: SizeConfig.blockSizeVertical*2,
//           //   left: SizeConfig.blockSizeHorizontal*2,
//           //   right: SizeConfig.blockSizeVertical*2,
//           // ),
//           child: Row(
//             children: <Widget>[
//               new Container(
//                 height: SizeConfig.blockSizeVertical*8,
//                 width:  SizeConfig.blockSizeHorizontal * 55.5,
//                 //   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 14,
//                 //   left: MediaQuery.of(context).size.width/5,),
//                 padding: EdgeInsets.only(
//                   // top: MediaQuery.of(context).size.height / 39,
//                   left:  SizeConfig.blockSizeHorizontal * 1.7,
//                   top: MediaQuery.of(context).size.height*0.02,
//                 ),
//                 child: Column(
//                   children: <Widget>[
//                     Text('  SILVER TRAINER PACKS     ',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize:  SizeConfig.blockSizeVertical * 2.6,
//                           fontWeight: FontWeight.w600,
//                         ),),
//                     Text('Cult Galleria    ,                                           ',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w400,

//                         fontSize: SizeConfig.blockSizeVertical * 1.7,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               new Container(
//                 // decoration: n,
//                 height: SizeConfig.blockSizeVertical*8,
//                 width: SizeConfig.blockSizeHorizontal * 41,
//                 //   paddi3ng: EdgeInsets.only(top: MediaQuery.of(context).size.height / 14,
//                 //   left: MediaQuery.of(context).size.width/5,),

//                 padding: EdgeInsets.only(
//                   // top: MediaQuery.of(context).size.height / 550,
//                   left:  SizeConfig.blockSizeHorizontal * 1,
//                   // bottom:MediaQuery.of(context).size.height  *0.8,
//                 ),
//                 // child: Column(
//                 //   children: <Widget>[
//                   //  FlatButton(
//                   //    padding: EdgeInsets.only(top:0.0,bottom:0.0,),
//                   //    color: Colors.white,
//                   //    child:
//                   child: Material(
//                     child:InkWell(
//                       onTap:(){
//                         Navigator.push(context,
//                         MaterialPageRoute(
//                           builder: (context)=>Allcenters(),
//                         ));
//                       },

//                        child: new Container(
//                          padding:EdgeInsets.only(
//                            top: MediaQuery.of(context).size.height*0.02,
//                          ),
//                        child:
//                        Text('      All CENTERS',
//                          style: TextStyle(
//                            color: Colors.red,
//                            fontWeight: FontWeight.w600,
//                           fontSize: SizeConfig.blockSizeVertical * 2.6,
//                    ),),
//                       ),

//                     ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//            new Container(
//            height: MediaQuery.of(context).size.height*0.15,
//            width: MediaQuery.of(context).size.width*1,
//           // alignment: Alignment.topLeft,
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               new Container(
//                 child: Column(
//                   children: <Widget>[
//                     Container(
//                       height: MediaQuery.of(context).size.height* 0.12,
//                       width: MediaQuery.of(context).size.height* 0.20,
//                       child: RaisedButton(
//                       color: Colors.white,
//                       elevation: 4.0,
//                        child: Column(

//                          children: <Widget>[
//                            Text('5 Sessions',
//                     style:TextStyle(
//                       color:Colors.black,
//                       fontWeight:FontWeight.w700,
//                       fontSize:SizeConfig.blockSizeVertical*2.5,
//                     ),
//                       ),
//                     Text('₹ 7990 ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(0.6),
//                                decoration: TextDecoration.lineThrough,

//                                fontSize: MediaQuery.of(context).size.height*0.022,
//                     ),),
//                     Text('₹ 6990 ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(1.0),
//                                fontSize: MediaQuery.of(context).size.height*0.035,
//                     ),),
//                     Text('₹ 1398/session ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(0.6),
//                                fontSize: MediaQuery.of(context).size.height*0.018,
//                     ),),
//                          ],
//                        ),

//                     onPressed: ()=>gym(context),
//                     ),
//                     ),
//                   ],
//                 ),
//               ),
//               new Container(
//                 child: Column(
//                   children: <Widget>[
//                     Container(
//                       height: MediaQuery.of(context).size.height* 0.12,
//                       width: MediaQuery.of(context).size.height* 0.20,
//                       child: RaisedButton(
//                       color: Colors.white,
//                       elevation: 4.0,
//                        child: Column(

//                          children: <Widget>[
//                            Text('11 Sessions',
//                     style:TextStyle(
//                       color:Colors.black,
//                       fontWeight:FontWeight.w700,
//                       fontSize:SizeConfig.blockSizeVertical*2.5,
//                     ),
//                       ),
//                     Text('₹ 17590 ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(0.6),
//                                decoration: TextDecoration.lineThrough,

//                                fontSize: MediaQuery.of(context).size.height*0.022,
//                     ),),
//                     Text('₹ 12990 ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(1.0),
//                                fontSize: MediaQuery.of(context).size.height*0.035,
//                     ),),
//                     Text('₹ 1180/session ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(0.6),
//                                fontSize: MediaQuery.of(context).size.height*0.018,
//                     ),),
//                          ],
//                        ),

//                     onPressed: ()=>gym(context),
//                     ),
//                     ),
//                   ],
//                 ),
//               ),
//               new Container(
//                 child: Column(
//                   children: <Widget>[
//                     Container(
//                       height: MediaQuery.of(context).size.height* 0.12,
//                       width: MediaQuery.of(context).size.height* 0.20,
//                       child: RaisedButton(
//                       color: Colors.white,
//                       elevation: 4.0,
//                        child: Column(

//                          children: <Widget>[
//                            Text('25 Sessions',
//                     style:TextStyle(
//                       color:Colors.black,
//                       fontWeight:FontWeight.w700,
//                       fontSize:SizeConfig.blockSizeVertical*2.5,
//                     ),
//                       ),
//                     Text('₹ 39990 ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(0.6),
//                                decoration: TextDecoration.lineThrough,

//                                fontSize: MediaQuery.of(context).size.height*0.022,
//                     ),),
//                     Text('₹ 25990 ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(1.0),
//                                fontSize: MediaQuery.of(context).size.height*0.035,
//                     ),),
//                     Text('₹ 1039/session ',
//                              style: TextStyle(
//                                color: Colors.black.withOpacity(0.6),
//                                fontSize: MediaQuery.of(context).size.height*0.018,
//                     ),),
//                          ],
//                        ),

//                     onPressed: () =>gym(context),
//                     ),
//                     ),
//                   ],
//                 ),
//               ),

//             ],
//           ),
//         ),
//         Image.asset('image/poster.png'),

//         new Container(
//           height: MediaQuery.of(context).size.height *0.07,
//           width: MediaQuery.of(context).size.width*0.95,
//           padding: EdgeInsets.only(
//             // bottom: MediaQuery.of(context).size.height*0.02,
//           ),
//           child: Row(
//             children: <Widget>[
//               new Container(
//                 height: SizeConfig.blockSizeVertical*5,
//                 width:  SizeConfig.blockSizeHorizontal * 47,

//                 child: Column(
//                   children: <Widget>[

//                     Text('ACTIVE PACKAGES',
//                         style: TextStyle(
//                           color: Colors.black87,
//                           fontSize:  SizeConfig.blockSizeVertical * 2.6,
//                           fontWeight: FontWeight.w600,
//                     ),
//                    ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         new Container(
//           height: MediaQuery.of(context).size.height *0.12,
//           width: MediaQuery.of(context).size.width*0.95,
//           padding: EdgeInsets.only(
//           bottom: MediaQuery.of(context).size.height*0.02,
//           ),
//           child: Row(
//             children: <Widget>[

//               new Container(
//                 padding: EdgeInsets.only(
//                   left: MediaQuery.of(context).size.width*0.06,
//                 ),
//                 height: MediaQuery.of(context).size.height*0.09,
//                 // width: MediaQuery.of(context).size.width*0.3,

//                 child: Row(
//                   children: <Widget>[
//                     Image.asset('image/row3image.png'),

//                   ],
//                 ),
//               ),
//                 new Container(
//                       height: MediaQuery.of(context).size.height*0.09,
//                       // width: MediaQuery.of(context).size.width*0.4,
//                       child: Column(
//                         children: <Widget>[
//                           Text('Gold Trainer 5 Sessions ',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize:  SizeConfig.blockSizeVertical * 2.6,
//                           fontWeight: FontWeight.w700,
//                         ),),
//                     Text('           Fusion Gym                                            ',
//                       style: TextStyle(
//                         color: Colors.black.withOpacity(0.7),
//                         fontWeight: FontWeight.w400,

//                         fontSize: SizeConfig.blockSizeVertical * 2.1,
//                       ),
//                     ),
//                     Text('  4/5 Left                                ',
//                     style:TextStyle(
//                       color: Colors.red,
//                       fontSize: SizeConfig.blockSizeVertical * 2.6,
//                       fontWeight: FontWeight.w700,
//                     ),),

//                         ],
//                       ),
//                     ),
//             ],
//           ),
//         ),
//         new Container(
//           height: MediaQuery.of(context).size.height *0.12,
//           width: MediaQuery.of(context).size.width*0.95,
//           child: Row(
//             children: <Widget>[

//               new Container(
//                 padding: EdgeInsets.only(
//                   left: MediaQuery.of(context).size.width*0.06,
//                 ),
//                 height: MediaQuery.of(context).size.height*0.09,
//                 // width: MediaQuery.of(context).size.width*0.3,

//                 child: Row(
//                   children: <Widget>[
//                     Image.asset('image/row3image.png'),

//                   ],
//                 ),
//               ),
//                 new Container(
//                       height: MediaQuery.of(context).size.height*0.09,
//                       // width: MediaQuery.of(context).size.width*0.4,
//                       child: Column(
//                         children: <Widget>[
//                           Text('Gold Trainer 10 Sessions ',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize:  SizeConfig.blockSizeVertical * 2.6,
//                           fontWeight: FontWeight.w700,
//                         ),),
//                          Text('          Fusion Gym                                            ',
//                          style: TextStyle(
//                         color: Colors.black.withOpacity(0.7),
//                         fontWeight: FontWeight.w400,

//                         fontSize: SizeConfig.blockSizeVertical * 2.1,
//                       ),
//                     ),
//                     Text('         Awaiting Confirmation                   ',

//                     style:TextStyle(
//                       color: Colors.red,
//                       fontSize: SizeConfig.blockSizeVertical * 2.4,
//                       fontWeight: FontWeight.w700,
//                     ),),
//                         ],
//                       ),
//                     ),
//             ],
//           ),
//         ),
//         new Container(
//            height: MediaQuery.of(context).size.height *0.08,
//            width: MediaQuery.of(context).size.width *0.98,
//           // padding: EdgeInsets.only(
//           //   top: SizeConfig.blockSizeVertical*2,
//           //   left: SizeConfig.blockSizeHorizontal*2,
//           //   right: SizeConfig.blockSizeVertical*2,
//           // ),
//           child: Row(
//             children: <Widget>[
//               new Container(
//                 height: SizeConfig.blockSizeVertical*8,
//                 width:  SizeConfig.blockSizeHorizontal * 55.5,
//                 //   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 14,
//                 //   left: MediaQuery.of(context).size.width/5,),
//                 padding: EdgeInsets.only(
//                   // top: MediaQuery.of(context).size.height / 39,
//                   left:  SizeConfig.blockSizeHorizontal * 1.7,
//                   top: MediaQuery.of(context).size.height*0.02,
//                 ),
//                 child: Column(
//                   children: <Widget>[
//                     Text('REDEEM DoDo coins      ',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize:  SizeConfig.blockSizeVertical * 2.6,
//                           fontWeight: FontWeight.w600,
//                         ),),
//                     Text('Cult Galleria ,                                           ',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w400,

//                         fontSize: SizeConfig.blockSizeVertical * 1.7,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               new Container(
//                 // decoration: n,
//                 height: SizeConfig.blockSizeVertical*8,
//                 width: SizeConfig.blockSizeHorizontal * 41,
//                 //   paddi3ng: EdgeInsets.only(top: MediaQuery.of(context).size.height / 14,
//                 //   left: MediaQuery.of(context).size.width/5,),

//                 padding: EdgeInsets.only(
//                   // top: MediaQuery.of(context).size.height / 550,
//                   left:  SizeConfig.blockSizeHorizontal * 1,
//                   // bottom:MediaQuery.of(context).size.height  *0.8,
//                 ),
//                 // child: Column(
//                 //   children: <Widget>[
//                   //  FlatButton(
//                   //    padding: EdgeInsets.only(top:0.0,bottom:0.0,),
//                   //    color: Colors.white,
//                   //    child:
//                   child: Material(
//                     child:InkWell(
//                       onTap:(){
//                         Navigator.push(context,
//                         MaterialPageRoute(
//                           builder: (context)=>Allcenters(),
//                         ));
//                       },

//                        child: new Container(
//                          padding:EdgeInsets.only(
//                            top: MediaQuery.of(context).size.height*0.02,
//                          ),
//                        child:
//                        Text('      All CENTERS',
//                          style: TextStyle(
//                            color: Colors.red,
//                            fontWeight: FontWeight.w600,
//                           fontSize: SizeConfig.blockSizeVertical * 2.6,
//                    ),),
//                       ),

//                     ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         new Container(
//            height: MediaQuery.of(context).size.height *0.07,
//            width: MediaQuery.of(context).size.width *1,
//           padding: EdgeInsets.only(
//             top: SizeConfig.blockSizeVertical*1,
//             left: SizeConfig.blockSizeHorizontal*2,
//             right: SizeConfig.blockSizeVertical*2,
//             bottom: SizeConfig.blockSizeVertical*2,

//           ),
//           child: Row(
//             children: <Widget>[
//               new Container(
//                 height: SizeConfig.blockSizeVertical*4,
//                 width:  SizeConfig.blockSizeHorizontal * 65.0,
//                 padding: EdgeInsets.only(
//                   // top: MediaQuery.of(context).size.height / 39,
//                   left:  SizeConfig.blockSizeHorizontal * 1.7,
//                   top: MediaQuery.of(context).size.height*0.01,
//                 ),
//                 child: Column(
//                   children: <Widget>[
//                     Text('Balance                                         ',
//                         style: TextStyle(
//                           color: Colors.red,
//                           fontSize:  SizeConfig.blockSizeVertical * 2.5,
//                           fontWeight: FontWeight.w600,
//                         ),),
//                   ],
//                 ),
//               ),

//               new Container(
//                 height: SizeConfig.blockSizeVertical*3,
//                 width: SizeConfig.blockSizeHorizontal * 10,
//                 padding: EdgeInsets.only(
//                   left:  SizeConfig.blockSizeHorizontal * 1,
//                   // bottom: MediaQuery.of(context).size.height*0.02,
//                 ),
//                 child: Image.asset('image/account_dodo.png'),

//               ),
//               new Container(
//                  height: SizeConfig.blockSizeVertical*4,
//                 width: SizeConfig.blockSizeHorizontal*10,
//                 padding: EdgeInsets.only(
//                   right: SizeConfig.blockSizeHorizontal*1,
//                   //  top: SizeConfig.blockSizeVertical*1,

//                 ),
//                  child:Column(
//                   children: <Widget>[
//                     Text('120',
//                         style: TextStyle(
//                           color: Colors.red,
//                           fontSize:  SizeConfig.blockSizeVertical * 2.6,
//                           fontWeight: FontWeight.w600,
//                         ),),
//                   ],
//                 ),
//               ),
//                 ],
//           ),
//         ),

//         //  new Container(
//         //    height: MediaQuery.of(context).size.height*0.14,
//         //    width: MediaQuery.of(context).size.width*1,
//         //   // alignment: Alignment.topLeft,
//         //   child: Row(
//         //     crossAxisAlignment: CrossAxisAlignment.center,
//         //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         //     children: <Widget>[
//         //       new Container(
//         //         child: Column(
//         //           children: <Widget>[
//         //             Container(
//         //               height: MediaQuery.of(context).size.height* 0.12,
//         //               width: MediaQuery.of(context).size.width* 0.35,
//         //               child: RaisedButton(
//         //               color: Colors.white,
//         //               elevation: 4.0,
//         //                child: Column(

//         //                  children: <Widget>[
//         //                    Text('1 Gold Session',
//         //             style:TextStyle(
//         //               color:Colors.black.withOpacity(0.7),
//         //               fontWeight:FontWeight.w700,
//         //               fontSize:SizeConfig.blockSizeVertical*1.5,
//         //             ),
//         //               ),
//         //                  ],
//         //                ),
//         //                  new Container(

//         //         height: SizeConfig.blockSizeVertical*3,
//         //         width: SizeConfig.blockSizeHorizontal * 10,
//         //         padding: EdgeInsets.only(
//         //           left:  SizeConfig.blockSizeHorizontal * 1,
//         //           // bottom: MediaQuery.of(context).size.height*0.02,
//         //         ),
//         //         child: Image.asset('image/account_dodo.png'),

//         //       ),
//         //       new Container(
//         //          height: SizeConfig.blockSizeVertical*4,
//         //         width: SizeConfig.blockSizeHorizontal*10,
//         //         padding: EdgeInsets.only(
//         //           right: SizeConfig.blockSizeHorizontal*1,
//         //           //  top: SizeConfig.blockSizeVertical*1,

//         //         ),
//         //          child:Column(
//         //           children: <Widget>[
//         //             Text('150',
//         //                 style: TextStyle(
//         //                   color: Colors.red,
//         //                   fontSize:  SizeConfig.blockSizeVertical * 2.6,
//         //                   fontWeight: FontWeight.w600,
//         //                 ),),
//         //           ],
//         //         ),
//         //       ),

//         //             onPressed: (){},
//         //             ),
//         //             ),
//         //           ],
//         //         ),
//         //       ),
//         //     ],
//         //   ),
//         //  ),

//         new Container(
//           padding: EdgeInsets.only(
//             left: MediaQuery.of(context).size.width*0.03,
//             right: MediaQuery.of(context).size.width*0.03,
//             bottom: MediaQuery.of(context).size.height*0.02,
//           ),
//           child:
//                   // Image.asset('image/account_dodo.png'),

//         Image.asset('image/share&earn.png'),
//         ),
//         new Container(
//           height: MediaQuery.of(context).size.height *0.07,
//           width: MediaQuery.of(context).size.width*0.95,
//           child: Row(
//             children: <Widget>[
//               new Container(
//                 height: SizeConfig.blockSizeVertical*5,
//                 width:  SizeConfig.blockSizeHorizontal * 47,

//                 child: Column(
//                   children: <Widget>[

//                     Text('INACTIVE PACKAGES',
//                         style: TextStyle(
//                           color: Colors.black87,
//                           fontSize:  SizeConfig.blockSizeVertical * 2.6,
//                           fontWeight: FontWeight.w600,
//                     ),
//                    ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         new Container(
//           height: MediaQuery.of(context).size.height *0.12,
//           width: MediaQuery.of(context).size.width*0.95,
//           padding: EdgeInsets.only(
//           bottom: MediaQuery.of(context).size.height*0.02,
//           ),
//           child: Row(
//             children: <Widget>[

//               new Container(
//                 padding: EdgeInsets.only(
//                   left: MediaQuery.of(context).size.width*0.06,
//                 ),
//                 height: MediaQuery.of(context).size.height*0.09,
//                 // width: MediaQuery.of(context).size.width*0.3,

//                 child: Row(
//                   children: <Widget>[
//                     Image.asset('image/row3image.png'),

//                   ],
//                 ),
//               ),
//                 new Container(
//                       height: MediaQuery.of(context).size.height*0.09,
//                       // width: MediaQuery.of(context).size.width*0.4,
//                       child: Column(
//                         children: <Widget>[
//                           Text('Gold Trainer 5 Sessions ',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize:  SizeConfig.blockSizeVertical * 2.6,
//                           fontWeight: FontWeight.w700,
//                         ),),
//                     Text('           Fusion Gym                                            ',
//                       style: TextStyle(
//                         color: Colors.black.withOpacity(0.7),
//                         fontWeight: FontWeight.w400,

//                         fontSize: SizeConfig.blockSizeVertical * 2.1,
//                       ),
//                     ),
//                     Text('  0/5 Left                                ',
//                     style:TextStyle(
//                       color: Colors.red,
//                       fontSize: SizeConfig.blockSizeVertical * 2.6,
//                       fontWeight: FontWeight.w700,
//                     ),),

//                         ],
//                       ),
//                     ),
//             ],
//           ),
//         ),
//         new Container(
//           height: MediaQuery.of(context).size.height *0.12,
//           width: MediaQuery.of(context).size.width*0.95,
//           child: Row(
//             children: <Widget>[

//               new Container(
//                 padding: EdgeInsets.only(
//                   left: MediaQuery.of(context).size.width*0.06,
//                 ),
//                 height: MediaQuery.of(context).size.height*0.09,
//                 // width: MediaQuery.of(context).size.width*0.3,

//                 child: Row(
//                   children: <Widget>[
//                     Image.asset('image/row3image.png'),

//                   ],
//                 ),
//               ),
//                 new Container(
//                       height: MediaQuery.of(context).size.height*0.09,
//                       // width: MediaQuery.of(context).size.width*0.4,
//                       child: Column(
//                         children: <Widget>[
//                           Text('Gold Trainer 10 Sessions ',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize:  SizeConfig.blockSizeVertical * 2.6,
//                           fontWeight: FontWeight.w700,
//                         ),),
//                          Text('          Fusion Gym                                            ',
//                          style: TextStyle(
//                         color: Colors.black.withOpacity(0.7),
//                         fontWeight: FontWeight.w400,

//                         fontSize: SizeConfig.blockSizeVertical * 2.1,
//                       ),
//                     ),
//                     Text('    0/10 left                                 ',

//                     style:TextStyle(
//                       color: Colors.red,
//                       fontSize: SizeConfig.blockSizeVertical * 2.4,
//                       fontWeight: FontWeight.w700,
//                     ),),

//                         ],
//                       ),
//                     ),

//             ],
//           ),

//         ),
//         new Container(
//           padding: EdgeInsets.only(
//           bottom: MediaQuery.of(context).size.height*0.03,

//           ),
//           child: RaisedButton(
//             elevation: 1.0,
//             color: Colors.white,
//             child: Column(
//               children: <Widget>[
//                 Text('Show more +'),
//               ],
//             ),
//             onPressed: (){},
//           ),
//         ),
//         Image.asset('image/why_buy_pack.png'),
//       ],
//     );
//   }

// gym(BuildContext context) {
//     showModalBottomSheet(
//         context: context,
//         builder: (context) {
//            return new Container(
//             height: MediaQuery.of(context).size.height*0.4,
//             padding:
//             EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02,
//             ),
//             child: Column(
//               children: <Widget>[
//                 new Container(
//                   height: MediaQuery.of(context).size.height*0.08,
//                   padding:
//                   EdgeInsets.only(
//                     bottom: MediaQuery.of(context).size.height*0.0,
//                   ),
//                   child: Column(
//                     children: <Widget>[
//                       Text('Gold Trainer 5 Sessions Pack                   ',
//                       style: TextStyle(color: Colors.black,
//                        fontSize: MediaQuery.of(context).size.height*0.03,
//                                               fontWeight: FontWeight.bold,

//                 ),
//                 ),
//                        Text('Fusion Gym                                                   ',
//                        style: TextStyle(color: Colors.black.withOpacity(0.7),
//                        fontSize: MediaQuery.of(context).size.height*0.03,
//                 ),
//                 ),
//                     ],
//                   ),
//                 ),
//                 new Container(
//                   padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height*0.02,
//                     left: MediaQuery.of(context).size.width*0.05,
//                   ),
//                   color: Colors.grey.withOpacity(0.2),
//                   height: MediaQuery.of(context).size.height*0.27,
//                   width: MediaQuery.of(context).size.width*1.0,
//                   child: Column(
//                     children: <Widget>[
//                       Text('Address:                                                           ',
//                       style: TextStyle(color: Colors.black,
//                        fontSize: MediaQuery.of(context).size.height*0.03,
//                       fontWeight: FontWeight.bold,
//                 ),
//                 ),
//                        Text('2nd Floor, Galleria Market, DLF Phase 4, Sector 28, Gurugram - 122002 ',
//                        style: TextStyle(color: Colors.black.withOpacity(0.7),
//                        fontSize: MediaQuery.of(context).size.height*0.02,
//                 ),
//                 ),
//                 Text('Instruction:                                                         ',
//                       style: TextStyle(color: Colors.black,
//                        fontSize: MediaQuery.of(context).size.height*0.03,
//                       fontWeight: FontWeight.bold,
//                 ),
//                 ),
//                        Text('Pay the amount at Gym center and we will confirm your status as soon as payment is received ',
//                        style: TextStyle(color: Colors.black.withOpacity(0.7),
//                        fontSize: MediaQuery.of(context).size.height*0.02,
//                 ),
//                 ),
//                 RaisedButton(
//                   color: Colors.red,
//                   padding: EdgeInsets.only(
//                     left: MediaQuery.of(context).size.width*0.1,
//                     right:MediaQuery.of(context).size.width*0.1,
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(27.0),
//                   ),
//                   child: Text('PAY AT GYM',
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),),
//                   onPressed: (){},
//                 )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//            );
//         });
//   }
// }

// new Container(
//   padding:EdgeInsets.all(SizeConfig.blockSizeVertical*5.0) ,
//           child:Row(

//           children: <Widget>[
//          ListView(
//            children: <Widget>[
//              ListTile(
//                title: Text('5 Sessions',
//                style: TextStyle(color: Colors.black,fontSize:SizeConfig.blockSizeVertical*5.0),
//              ),
//              ),

//            ],

//          )
//        ],
//      ),
// ),

//   Container(
//     child: Column(
//       children: <Widget>[
//         Container(
//           height: 50.0,
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     "GOLD TRAINER PACKS",
//                     style: TextStyle(
//                       color: Colors.black,
//                       height: 25.0,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(
//                       bottom: 5.0,
//                     ),
//                   ),
//                   Text(
//                     "Cult Galleria",
//                     style: TextStyle(
//                       color: Colors.black,
//                       height: 18.0,
//                     ),
//                     textAlign: TextAlign.left,
//                   ),
//                 ],
//               ),
//               Tab(
//                 text: "ALL CENTERS",
//               ),
//             ],
//           ),
//         ),
// SizedBox(
//   height: MediaQuery.of(context).size.height/20.5,
//   width: MediaQuery.of(context).size.width/30.0,
//   child: Row(

//     children: const <Widget>[

// SizedBox(
//   height: MediaQuery.of(context).size.height/2.5,

//  child: Row(
//    children: <Widget>[
//      Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[

//          Text("5 Sessions",style:TextStyle(color: Colors.black,fontSize:18.0,),
//          textAlign: TextAlign.left,
//          ),
//         Padding(
//            padding: EdgeInsets.only(bottom: 10.0,),
//          ),
//          Text("₹ 7990", style:TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough,fontSize: 15.0,),

//          ),
//          Padding(
//            padding: EdgeInsets.only(bottom: 5.0,),
//          ),
//          Text("₹ 6990", style: TextStyle(color: Colors.black, fontSize: 36.0,fontWeight: FontWeight.bold,),

//          ),
//          Padding(
//            padding: EdgeInsets.only(bottom: 5.0,),
//          ),
//          Text("₹ 1398/session", style: TextStyle(color: Colors.grey, fontSize:12.0,),

//          ),
//          Padding(
//            padding: EdgeInsets.only(bottom: 5.0,),
//          ),

//         ],
//         ),

//        ],

//  ),
// ),
// Z
// SizedBox(
//   height: MediaQuery.of(context).size.height / 10,
//   child: Row(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text(
//             "SILVER TRAINER PACKS",
//             style: TextStyle(
//               color: Colors.black,
//               height: 22.0,
//             ),
//             textAlign: TextAlign.left,
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               bottom: 5.0,
//             ),
//           ),
//           Text(
//             "Cult Galleria",
//             style: TextStyle(
//               color: Colors.black,
//               height: 18.0,
//             ),
//             textAlign: TextAlign.left,
//           ),
//         ],
//       ),
//       Tab(
//         text: "ALL CENTERS",
//       ),
//     ],
//   ),
// ),

// Wrap(
//   spacing: 5.0,
//   children: <Widget>[
//     Chip(
//       label: RichText(
//         text: TextSpan(
//           style: DefaultTextStyle.of(context).style,
//           children: <TextSpan>[
//             TextSpan(
//               text: '5 Sessions \n',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 18.0,
//               ),
//             ),
//             TextSpan(
//               text: '₹ 7490 \n',
//               style: TextStyle(
//                 color: Colors.black.withOpacity(0.6),
//                 decoration: TextDecoration.lineThrough,
//                 fontSize: 15.0,
//               ),
//             ),
//             TextSpan(
//               text: "₹ 6990 \n",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 36.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             TextSpan(
//               text: "₹ 1398/session",
//               style: TextStyle(
//                 color: Colors.black.withOpacity(0.4),
//                 fontSize: 12.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//     Chip(
//       label: RichText(
//         text: TextSpan(
//           style: DefaultTextStyle.of(context).style,
//           children: <TextSpan>[
//             TextSpan(
//               text: '11 Sessions \n',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 18.0,
//               ),
//             ),
//             TextSpan(
//               text: '₹ 7490 \n',
//               style: TextStyle(
//                 color: Colors.black.withOpacity(0.6),
//                 decoration: TextDecoration.lineThrough,
//                 fontSize: 15.0,
//               ),
//             ),
//             TextSpan(
//               text: "₹ 1990 \n",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 36.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             TextSpan(
//               text: "₹ 1354/session",
//               style: TextStyle(
//                 color: Colors.black.withOpacity(0.4),
//                 fontSize: 12.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//     Chip(
//       label: RichText(
//         text: TextSpan(
//           style: DefaultTextStyle.of(context).style,
//           children: <TextSpan>[
//             TextSpan(
//               text: '25 Sessions \n',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 18.0,
//               ),
//             ),
//             TextSpan(
//               text: '₹ 7490 \n',
//               style: TextStyle(
//                 color: Colors.black.withOpacity(0.6),
//                 decoration: TextDecoration.lineThrough,
//                 fontSize: 15.0,
//               ),
//             ),
//             TextSpan(
//               text: "₹ 8990 \n",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 36.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             TextSpan(
//               text: "₹ 1354/session",
//               style: TextStyle(
//                 color: Colors.black.withOpacity(0.4),
//                 fontSize: 12.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   ],R
// ),
//             ],

//     );

//   }
// }

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
