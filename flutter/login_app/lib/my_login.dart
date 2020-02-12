import 'dart:math';

import 'package:flutter/material.dart';

import 'home.dart';

class Login_page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => LonigSate();
}

class LonigSate extends State<Login_page>
{
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
    // TODO: implement build
    return Scaffold(
        appBar:AppBar(title:Text('Travel_App'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        ),
        body:Container(
          child:Column(children: <Widget>[
            Expanded(
              flex:1,
              child:Container(
                color:Colors.white,
                child:Column(children: <Widget>[
                  Expanded(
                    flex:3,
                    child:Container(
                      color:Colors.white10,
                      child: Image.asset('assets/images/21476119.jpg'),
                    ),
                   ),
                  Expanded(
                    flex:1,
                    child:Container(
                      color:Colors.white,
                      child: Text('Welcome to Travel_App',
                      textAlign: TextAlign.center,
                      style:TextStyle(
                      fontSize:30.0,color:Colors.red,)
                      ),
                      height: 500,
                      width:500,
                    ),
                  ),
                ],)
              ),
            ),
            Expanded(
              flex:1,
              child:Container(
                child:Column(children: <Widget>[
                  Expanded(
                    flex:1,
                    child:Container(
                      color:Colors.white,
                      padding: EdgeInsets.symmetric(vertical:10,horizontal:30),
                      child:TextField(
                        controller: email,
                        decoration: InputDecoration(prefixIcon:Icon(Icons.email),
                        labelText: 'Enter the Email',
                        border:OutlineInputBorder(
                          borderSide:BorderSide(width:2),
                          ),
                       ),
                     ),
                    ),
                  ),
                  Expanded(
                    flex:1,
                    child:Container(
                      padding: EdgeInsets.symmetric(vertical:10,horizontal:30),
                      child:TextField(
                        controller: password,
                        decoration:InputDecoration(
                          prefixIcon: Icon(Icons.vpn_key),
                          labelText: 'Password',
                          border:OutlineInputBorder(borderSide:BorderSide(width: 2.0),
                          )
                        ),
                      ),
                      color:Colors.white,
                    ),
                  ),
                  Expanded(
                    flex:1,
                    child:Container(
                      color:Colors.white,
                     // margin: EdgeInsets.only(left:20,right:20,bottom:70),
                     child:Row(children: <Widget>[
                       Expanded(
                         flex:1,
                         child:Container(
                           color:Colors.cyan,
                          padding:EdgeInsets.symmetric(vertical:10,horizontal:20),
                           margin:EdgeInsets.only(left:10,right:10),
                           child: RaisedButton(
                             child:Text('Login',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 20.0,color:Colors.black,
                            )
                          ),
                          onPressed: (){
                            print(email.text);
                            if(email.text != '' && password.text != '' && email.text == password.text){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>Third())
                              );
                            }
                          },
                        ),
                      ),
                    ),
                       Expanded(
                         flex:1,
                         child:Container(
                           color:Colors.lightBlue,
                           padding: EdgeInsets.symmetric(vertical:10,horizontal: 20),
                           margin:EdgeInsets.only(right:10),
                           child:RaisedButton(
                          child:Text('Register',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 20.0,color:Colors.black,
                            )
                          ),
                          onPressed:(){
                            
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>Formpage())
                            );
                          },
                        ),
                         ),
                       ),
                     ],)
                    ),
                  ),
                ],)
              ),
            ),
          ],)
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
class Formpage extends StatefulWidget
{
  @override
  _FormpageState createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        title:Text('Register'),
        centerTitle: true,
      ),
    );
  }
}
