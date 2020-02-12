//import 'package:flutter/cupertino.dart';

import 'dart:math';
import 'package:flutter/material.dart';
//import 'package:login_app/my_login.dart';
class First_1 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FirstState();
  }
  
}

class _FirstState extends State<First_1>
{
  int laptop_window =1;
  int mail=1;
  int wifi=1;
  int bluetooth=1;
  int camera=1;
  int account_balance_wallet=1;
  int book=1;
  int airlanemode_active=1;
  int add_photo_alternate=1;
  int airline_seat_flat=1;
  //change color
//color = colorIndex.elementAt(0);  
//inside onTap()
// index = 0;
//change();
  List<Color>random_colors = 
[
  Colors.purpleAccent,
  Colors.redAccent,
  Colors.yellowAccent,
  Colors.blueAccent,
  Colors.deepOrange,
  Colors.lightBlueAccent,
];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text('widget'),),
        body:Container(
          child:Column(
            children: <Widget>[
              Expanded(
                flex:4,
                child:Container(
                  
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex:1,
                        child:Container(
                          //color:Colors.green,
                          //margin:EdgeInsets.only(right: 5,bottom:5),
                          child:Column(
                            children: <Widget>[
                              Expanded(
                                flex:1,
                                child:GestureDetector(
                                  onTap:(){
                                    setState(
                                      (){
                                        laptop_window =
                                        Random().nextInt(random_colors.length);
                                      }
                                    );
                                  },
                                
                                child:Container(
                                  //color:Colors.orange,
                                  margin:EdgeInsets.only(right:5,bottom:5),
                                  color: random_colors[laptop_window],
                                 child: Icon(Icons.laptop_windows,size:50,color:Colors.white),
                                  height: 500,
                                  width:500,
                                ),
                              ),
                              ),
                              Expanded(
                                flex:1,
                                child:GestureDetector(
                                  onTap:(){
                                    setState(
                                      (){
                                        mail =
                                        Random().nextInt(random_colors.length);
                                      }
                                    );
                                  },
                                child:Container(
                                  //color: Colors.green,
                                  color: random_colors[mail],
                                  margin:EdgeInsets.only(top:5,right:5),
                                  child:Icon(Icons.mail,size:50,color:Colors.white),
                                  height:500,
                                  width:500,
                                ),
                                ),
                              ),
                            ],)
                        ),
                      ),

                      Expanded(
                        flex:1,
                        child:Container(
                          //color:Colors.red,
                          child: Column(children: <Widget>[
                            Expanded(
                              flex:1,
                              child:GestureDetector(
                                  onTap:(){
                                    setState(
                                      (){
                                        wifi =
                                        Random().nextInt(random_colors.length);
                                      }
                                    );
                                  },
                              child:Container(
                                //color:Colors.blue[300],
                                color: random_colors[wifi],
                                margin:EdgeInsets.only(bottom:5,left:5),
                                child:Icon(Icons.wifi,size:50,color:Colors.white),
                                height:500,
                                width:500,
                              ),
                              ),
                              ),
                              Expanded(
                                flex:3,
                                child:Container(
                                  //color:Colors.red[100],
                                  child: Row(children: <Widget>[
                                    Expanded(
                                      flex:1,
                                      child:Container(
                                        //color:Colors.yellow,
                                        //margin:EdgeInsets.only(top:5,bottom:5,left:5,right:5),
                                        child:Column(children: <Widget>[
                                          Expanded(
                                            flex:3,
                                            child:GestureDetector(
                                  onTap:(){
                                    setState(
                                      (){
                                        bluetooth=
                                        Random().nextInt(random_colors.length);
                                      }
                                    );
                                  },
                                            child:Container(
                                              //color:Colors.yellowAccent,
                                              color: random_colors[bluetooth],
                                              margin:EdgeInsets.only(bottom:5,top:5,right:5,left:5),
                                              child:Icon(Icons.bluetooth,size:50,color:Colors.white),
                                              height:500,
                                              width:500,
                                            ),
                                            ),
                                          ),
                                          Expanded(
                                            flex:1,
                                            child:GestureDetector(
                                  onTap:(){
                                    setState(
                                      (){
                                        camera=
                                        Random().nextInt(random_colors.length);
                                      }
                                    );
                                  },
                                            child:Container(
                                              //color:Colors.red,
                                              color: random_colors[camera],
                                              margin:EdgeInsets.only(right:5,top:5,left:5),
                                              child:Icon(Icons.camera,size:30,color:Colors.white),
                                              height:500,
                                              width: 500,
                                            ),
                                            ),
                                          ),
                                        ],)
                                      ),
                                    ),
                                    Expanded(
                                      flex:1,
                                      child:Container(
                                        //color:Colors.brown,
                                        //margin:EdgeInsets.only(left:5,bottom:5,top:5),
                                        child:Column(children: <Widget>[
                                          Expanded(
                                            flex:1,
                                            child:GestureDetector(
                                  onTap:(){
                                    setState(
                                      (){
                                        account_balance_wallet=
                                        Random().nextInt(random_colors.length);
                                      }
                                    );
                                  },
                                            child:Container(
                                            //  color:Colors.brown,
                                            color: random_colors[account_balance_wallet],
                                              margin:EdgeInsets.only(top:5,bottom:5,left:5),
                                              child:Icon(Icons.account_balance_wallet,size:30,color:Colors.white),
                                              height: 500,
                                              width:500,
                                            ),
                                            ),
                                          ),
                                          Expanded(
                                            flex:3,
                                            child:GestureDetector(
                                  onTap:(){
                                    setState(
                                      (){
                                        camera=
                                        Random().nextInt(random_colors.length);
                                      }
                                    );
                                  },
                                            child:Container(
                                              //color:Colors.indigo,
                                              color: random_colors[book],
                                              margin:EdgeInsets.only(top:5,left:5),
                                              child:Icon(Icons.book,size:50,color:Colors.white),
                                              height: 500,
                                              width:500,
                                            ),
                                            ),
                                          ),
                                        ],)
                                      ),
                                    ),
                                  ],),
                                ),
                              ),
                          ],),
                        ),
                      ),

                  ],),
                ),
              ),
               
              Expanded(
                flex: 1,
                child:Container(
                  //color:Colors.blue[300],
                  //margin:EdgeInsets.only(left:10,right:10,bottom:5),
                  child:Row(children: <Widget>[
                    Expanded(
                      flex:3,
                      child:GestureDetector(
                                  onTap:(){
                                    setState(
                                      (){
                                        //panorama =
                                        Random().nextInt(random_colors.length);
                                      }
                                    );
                                  },
                      child:Container(
                        color:Colors.blue,
                        //color: random_colors[],
                        margin:EdgeInsets.only(bottom:5,left:10,right:8),
                        child:Icon(Icons.panorama_wide_angle,size:50,color:Colors.white),
                        height:500,
                        width:500,
                      ),
                      ),
                    ),
                    Expanded(
                      flex:1,
                      child:GestureDetector(
                                  onTap:(){
                                    setState(
                                      (){
                                        add_photo_alternate=
                                        Random().nextInt(random_colors.length);
                                      }
                                    );
                                  },
                      child:Container(
                        //color:Colors.indigo[300],
                        color: random_colors[add_photo_alternate],
                        margin:EdgeInsets.only(bottom:5,left:2,right:10),
                        child:Icon(Icons.add_photo_alternate,size:50,color:Colors.white),
                        height:500,
                        width:500,
                      ),
                      ),
                    ),
                  ],)
                ),
              ),
              Expanded(
                flex:1,
                child:GestureDetector(
                                  onTap:(){
                                    setState(
                                      (){
                                        airline_seat_flat=
                                        Random().nextInt(random_colors.length);
                                      }
                                    );
                                  },
                child:Container(
                  //color:Colors.pink,
                  color: random_colors[airline_seat_flat],
                  margin:EdgeInsets.only(top:5,bottom:10,right:10,left:10),
                  child:Icon(Icons.airline_seat_flat,size:50,color:Colors.white),
                  height:500,
                  width:500,
                ),
                ),
              ),
            ],)
        ),

      ),
    );
  }    
                

  
}