

import 'package:flutter/material.dart';
import 'package:login_app/formpage.dart';

class Formpage extends StatefulWidget
{
  @override
  _FormpageState createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {
  
  final _formkey = GlobalKey<FormState>();
  bool _autoValidate = false;
  bool _autoValidatePassword =false;
  bool _autoValidateName=false;
  bool _autoValidateEmail = false;
  bool _autoValidatePhone = false;
  bool _autoValidateCnpassword = false;

  String _email;
  String _password;
  String _phone;
  String _name;
  String _cnpassword;

  void _validateInput(){
    if(_formkey.currentState.validate()){
      _formkey.currentState.save();
      
    }
    else{
      setState(() {
        _autoValidate=true;
        
      });
    }

  }

  String validateName(String value) {
    String Pattern = r'(^[a-zA-Z]*$)';
    RegExp regExp = new RegExp(Pattern);
    if(value.length==0)
    return 'Name is Require';
    else if(!regExp.hasMatch(value)){
      return 'Name only in character';
    }
    return null;
    
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
  String validatePhone(String value) {
    String Pattern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(Pattern);
    if(value.length==0)
    return 'Phone is Require';
    else if(!regExp.hasMatch(value)){
      return 'Phone in number';
    }
    return null;
   }
   String validatePassword(String value) {
    String Pattern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(Pattern);
    if(value.length==0)
    return 'password is Require';
    else if(!regExp.hasMatch(value)){
      return 'password in number';
    }
    return null;
   }
    
     String validateCnpassword(String value) {
    String Pattern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(Pattern);
    if(value.length==0)
    return 'password is Require';
    else if(!regExp.hasMatch(value)){
      return 'password is not match';
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        title: Text('Register'),
        centerTitle: true,
        ),
        body:Form(
          key:_formkey,
          autovalidate: _autoValidate,
          child:Container(
            padding:EdgeInsets.all(30),
            child: Column(children: <Widget>[
              TextFormField(
                onTap: (){
                
                //print('hello');
                  setState(() {
                    _autoValidateName = true;
                  });
                },
                autovalidate: _autoValidateName ,
                decoration: InputDecoration(labelText: 'Name',prefixIcon: Icon(Icons.person)),
                keyboardType: TextInputType.text,
                maxLength: 32,
                validator: validateName,
                 onSaved: (String val) {
                      _name = val;
                   },
              ),
              TextFormField(
                onTap: (){
                  setState(() {
                    _autoValidateEmail = true;
                  });
                },
                autovalidate: _autoValidateEmail,
                decoration: InputDecoration(labelText: 'Email',prefixIcon: Icon(Icons.email)),
                keyboardType: TextInputType.emailAddress,
                maxLength: 32,
                validator: validateEmail,
                 onSaved: (String val) {
                      _email = val;
                   },
              ),
              TextFormField(
                onTap: (){
                  setState(() {
                    _autoValidatePhone = true;
                  });
                },
                autovalidate: _autoValidatePhone,
                decoration: InputDecoration(labelText: 'Phone',prefixIcon:Icon(Icons.phone) ),
                keyboardType: TextInputType.phone,
                validator: validatePhone,
                maxLength: 10,
                 onSaved: (String val) {
                      _phone = val;
                   },
              ),
              TextFormField(
                
                onTap: (){
                  setState(() {
                    _autoValidatePassword = true;
                  });
                },
                autovalidate: _autoValidatePassword,
                decoration: InputDecoration(labelText: 'Password',suffixIcon: Icon(Icons.remove_red_eye)),
                keyboardType: TextInputType.number,
                validator: validatePassword,
                maxLength: 6,
                 onSaved: (String val) {
                      _password = val;
                   },
                   obscureText: true,
              ),
              TextFormField(
                onTap: (){
                  setState(() {
                    _autoValidateCnpassword = true;
                  });
                },
                autovalidate: _autoValidateCnpassword,
                decoration: InputDecoration(labelText: 'Confirm password',suffixIcon:Icon(Icons.remove_red_eye)),
                keyboardType: TextInputType.number,
                validator: validateCnpassword,
                maxLength: 6,
                 onSaved: (String val) {
                      _cnpassword= val;
                   },
                   obscureText: true,
              ),
              SizedBox(height: 70),
              FloatingActionButton.extended(
                onPressed: _validateInput,
                label: Text('Register',
                style: TextStyle(
                  fontSize:20.0,
                  color:Colors.white,
                ),),
                backgroundColor: Colors.blue,
              ),
              
            ],)
          ),
        ),
    );
  }
}