import 'dart:ffi';

import 'package:dooit/Arrangements/SizeModification.dart';
import 'package:flutter/material.dart';

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
