//import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_project/Screens/home.dart';
import 'package:shopping_project/Screens/signup.dart';
import 'package:shopping_project/model/item.dart';
import 'package:shopping_project/services/auth.dart';

class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  
  final AuthServices _auth = AuthServices();
  bool checkBoxValue = false;

  addStringToSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('email', _email);
  }
  
  bool _autoValidate= false;
  bool _autoValidatePassword =false;
  bool _autoValidateEmail=false;
  String _email;
  String _password;

  String error;
   final _formkey = GlobalKey<FormState>();

   

   void _validateInput()async{
    if(_formkey.currentState.validate()){
      _formkey.currentState.save();
      dynamic result = await _auth.signInWithEmailAndPassword(_email, _password);
      Navigator.push(context,
        MaterialPageRoute(builder: (context)=>Home()));
      
      if(result == null){
        setState(()=> error = "Enter the valid email");
    }
      else{
        await addStringToSF();
      //   Navigator.push(context,
      //   MaterialPageRoute(builder: (context)=>Home()));
        }
      
    }
    else{
      setState(() {
        _autoValidate=true;
        // Navigator.push(context,
        // MaterialPageRoute(builder: (context)=>Home()));
        
      });
    }

  }
   String validateEmail(String value) {
    String Pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(Pattern);
    if(value.length==0)
    return 'Mail is Require';
    else if(!regExp.hasMatch(value)){
      return 'wrong Format';
    }
    return null;
  }
  String validatePassword(String value) {
    String Pattern = r'^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})';
    RegExp regExp = new RegExp(Pattern);
    if(value.length==0)
    return 'password is Require';
    else if(!regExp.hasMatch(value)){
      return 'first letter should be captical letter';
    }
    return null;
   }
  @override
  Widget build(BuildContext context) {
    void show_dialog(){
      showDialog(
        context:context,
        builder:(context){
          return AlertDialog(
            title: Text('Reset Password'),
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
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
      child:Form(
        key:_formkey,
        autovalidate: _autoValidate,
        child:Container(
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/image.png'),
                    fit: BoxFit.contain),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(top: 30, bottom: 40, right: 40),
                      child: Center(
                        child: Text("STEP2DOOR",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(140, 140, 250, .2),
                          blurRadius: 20.0,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[100]))),
                          child: TextFormField(
                            onTap: (){
                  setState(() {
                    _autoValidateEmail = true;
                  });
                },
                autovalidate: _autoValidateEmail,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                                validator: validateEmail,
                maxLength: 32,
                 onSaved: (String val) {
                      _email= val;
                   },
              ),
                          ),
                        
                        Container(
                          padding: EdgeInsets.all(8),
                          child: TextFormField(
                            onTap: (){
                  setState(() {
                    _autoValidatePassword= true;
                  });
                },
                autovalidate: _autoValidatePassword ,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.vpn_key),
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                                validator: validatePassword,
                maxLength: 6,
                 onSaved: (String val) {
                      _password= val;
                   },
                   obscureText: true,
              ),
                          ),
                        
                      ],
                    ),
                  ),
                  
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        show_dialog();
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: RaisedButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Text('Login',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      onPressed: (){
                       _validateInput();
        //               if(checkBoxValue==true&& _email=='ritu@gmail.com'&& _password=='12341234')
        //               {
        //                 Navigator.push(context,
        // MaterialPageRoute(builder: (context)=>Foodgrains()));

        //               }
        //               else{
        //                  Navigator.push(context,
        // MaterialPageRoute(builder: (context)=>Home()));
        //               }
                      }
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Container(
                    // alignment: Alignment.center,
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          value: checkBoxValue,
                         onChanged: (bool value){
                           setState(() {
                             checkBoxValue = value;
                          //   //  if(value==true)
                          //   //  Navigator.push(
                          //   //   context,
                          //   //   MaterialPageRoute(builder: (context)=>Foodgrains())
                          //   // );
                           });
                         },),
                         Text('For admin'),
                         SizedBox(
                           height:30
                         ),
                        // Container(
                        //   margin: EdgeInsets.fromLTRB(50, 0, 10, 0),
                        //   child: Text(
                        //     'Create an account.',
                        //     style: TextStyle(
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.black),
                        //   ),
                        // ),
                        
                        Container(
                        margin: EdgeInsets.fromLTRB(80, 0, 10, 0),
                            child: GestureDetector(
                          child: Text(
                            "Sign up?",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>Register())
                            );

                          },
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    ),
    ),
    );
  }
}










