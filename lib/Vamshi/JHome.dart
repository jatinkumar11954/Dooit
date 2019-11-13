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

class Workout extends StatelessWidget {
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

          //    child:
          // new Container(
          //   width:MediaQuery.of(context).size.width/50,
          //   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 14,
          //   left: MediaQuery.of(context).size.width/5,),
          //   decoration: new BoxDecoration(
          //     borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
          //     color: Colors.purple,gradient: new LinearGradient(
          //       colors: [Colors.purple[300], Colors.purple[900]],begin: Alignment.centerRight,
          //       end: Alignment.centerLeft,
          //     ),
          //   ),
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
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 45,
            left: MediaQuery.of(context).size.width / 50,
            right: MediaQuery.of(context).size.width / 90,
          ),
          child: Row(
            children: <Widget>[
              new Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 2.13333,
                //   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 14,
                //   left: MediaQuery.of(context).size.width/5,),
                padding: EdgeInsets.only(
                  // top: MediaQuery.of(context).size.height / 39,
                  left: MediaQuery.of(context).size.width / 55,
                ),
                child: Column(
                  children: <Widget>[
                    Text('  PREFERED CENTER',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height / 48,
                          fontWeight: FontWeight.w600,
                        )),
                    Text(
                      'Cult Galleria                  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,

                        fontSize: MediaQuery.of(context).size.height / 58,
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width /2.0,
                //   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 14,
                //   left: MediaQuery.of(context).size.width/5,),

                padding: EdgeInsets.only(
                  // top: MediaQuery.of(context).size.height / 550,
                  left: MediaQuery.of(context).size.width / 75,
                  // bottom:MediaQuery.of(context).size.height  *0.8,
                ),
                child: Column(
                  children: <Widget>[
                  //  RaisedButton(
                  //    padding: EdgeInsets.only(top:0.0,bottom:0.0,),
                  //    color: Colors.black,
                  //    child:
                      Text('All CENTERS',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,

                          fontSize: MediaQuery.of(context).size.height / 48,
                        )),
                        //  onPressed: () {

                        // },
                        // elevation: 0.0
                        // ),
                  ],
                ),
              ),
            ],
          ),   
          
        ),
        new Divider(),
      ],
    );
  }
}

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
