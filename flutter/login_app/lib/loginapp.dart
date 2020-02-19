import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/material.dart';

import 'formpage.dart';
import 'home.dart';

class Loginapp extends StatefulWidget

{
  
  @override
  _LoginappState createState() => _LoginappState();
}

class _LoginappState extends State<Loginapp> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void initState(){
    email.text = '';
    password.text = '';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    void show_dialog(){
      showDialog(
        context:context,
        builder:(context){
          return AlertDialog(
            title: Text('Ok'),
            content:Container(
              height: 200,
              width:300,
              child:Column(children: <Widget>[
                Container(
                  child:TextFormField(
                    decoration: InputDecoration(
                      labelText:'New password',
                    ),
                  ),
                ),
                Container(
                  child:TextFormField(
                    decoration: InputDecoration(
                      labelText:'Confirm password'
                    ),
                  ),
                ),
              ],)
            ),

          );
        }

      );
    }
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.greenAccent,
        title:Text('Travel_App',
        style:TextStyle(
          fontSize: 25,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color:Colors.indigo,
        )),
        centerTitle: true,
      ),
      body:Container(
        child: Column(children: <Widget>[
          Expanded(
            flex:1,
            child:Container(
              //color:Colors.pinkAccent,
              child:Column(children: <Widget>[
                Expanded(
                  flex: 3,
                  child:Container(
                    //color:Colors.cyan,
                    child:Image.asset('assets/images/21476119.jpg'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child:Container(
                   // color: Colors.orangeAccent,
                    child: Text('Welcome to Travel App',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color:Colors.red
                      ),),
                      height: 500,
                      width: 500,
                  ),
                ),
              ],)
            ),
          ),
          Expanded(
            flex:1,
            child:Container(
              child: Column(children: <Widget>[
                Expanded(
                  flex:2,
                  child:Container(
                     child:Column(children: <Widget>[
                       Expanded(
                         flex:1,
                         child:Container(
                           //margin: EdgeInsets.all(20),
                          padding: EdgeInsets.only(right: 30,left:30,top:10),
                          //margin:EdgeInsets.all(10),
                           child:TextField(
                             controller: email,
                             decoration: InputDecoration(prefixIcon:Icon(Icons.person),
                               labelText: 'Enter email',
                               border: OutlineInputBorder(borderRadius:(BorderRadius.circular(30)),
                               ),
                             ),
                           )
                         ),
                       ),
                       Expanded(
                         flex:1,
                         child:Container(
                           //color:Colors.deepOrange,
                          // margin:EdgeInsets.all(20),
                           padding:EdgeInsets.only(right: 30,left:30,bottom: 20),
                           child:TextField(
                             controller: password,
                             decoration: InputDecoration(prefixIcon:Icon(Icons.vpn_key),
                             labelText: 'Password',
                             border:OutlineInputBorder(borderRadius:(BorderRadius.circular(30)),
                             ),
                             ),
                           ),
                         ),
                       ),
                     ],)
                  ),
                ),
                FloatingActionButton.extended(
                  onPressed: (){
                    show_dialog();
                  }, 
                  label:Text('forget Password',
                  style:TextStyle(
                    fontSize:20,
                  )),
                  
                  backgroundColor: Colors.blue,
                  ),
                Expanded(
                  flex:1,
                  child:Container(
                    padding: EdgeInsets.symmetric(horizontal:70),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                    FloatingActionButton.extended(
                        onPressed: (){
                            print(email.text);
                            if(email.text != '' && password.text != '' && email.text == password.text){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>Third())
                              );
                            }
                          },
                      label: Text('Login',
                      style:TextStyle(
                        fontSize:20,
                      )),
                      ),
                      FloatingActionButton.extended(
                        onPressed:(){
                           Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>Formpage())
                           );
                           },
                           label:Text('Register',
                           style:TextStyle(
                             fontSize:20,
                           )),
                      ),
                        
                    ],),
                  ),
                ),
              ],),
            ),
          ),
        ],),
      ),
    );
  }
}
class First extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text('Travel WIth Us'),
        centerTitle:true ,
      ),
      body:Container(
        child:Column(children: <Widget>[
          Expanded(
            flex:4,
            child:Container(
              color:Colors.white,
              margin: EdgeInsets.all(20),
              child:Image.network('https://www.holidify.com/images/bgImages/KUFRI.jpg')
            ),
          ),
          Expanded(
            flex:1,
            child:Container(
              color:Colors.white,
              margin:EdgeInsets.all(10),
              child:Text('Welcome to Kufri....',
              textAlign: TextAlign.center,
              style:TextStyle(
              fontSize:30.0,color:Colors.deepPurpleAccent
              ),
              ),
              height: 500,
              width:500,
            ),
          ),
          
          Expanded(
            flex:1,
            child:Container(
              //decoration: BoxDecoration(
                //border: BorderRadius.all(2),
              //),
              color:Colors.green,
              margin:EdgeInsets.only(left:150,right: 10,bottom:80),
              //child:TextField(
                 child:RaisedButton(
                          child:Text('Check for Visit',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 20.0,color:Colors.black,
                            )
                          ),
                          onPressed:(){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>Third())
                            );
                          },
                        ),
              height: 500,
              width: 500,
            ),
          ),
        ],)
      ),
    );
  }
  
}