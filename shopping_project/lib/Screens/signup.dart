
import 'package:flutter/material.dart';
import 'package:shopping_project/Screens/login.dart';
import 'package:shopping_project/services/auth.dart';

class Register extends StatefulWidget{
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {


  final AuthServices _auth = AuthServices();

   final _formkey = GlobalKey<FormState>();
   
  bool _autoValidate = false;
  bool _autoValidatePassword =false;
  bool _autoValidateName=false;
  bool _autoValidateEmail = false;
  bool _autoValidatePhone = false;
  bool _autoValidateCnpassword = false;
  bool _autoValidateAddress= false;

  String _email;
  String _password;
  String _phone;
  String _address;
  String _name;
  String _cnpassword;

  String error;

  void _validateInput()async {
    if(_formkey.currentState.validate()){
      _formkey.currentState.save();
      dynamic result = await _auth.registerWithEmailAndPassword(_name,_email, _password);
      Navigator.push( context,
       MaterialPageRoute(builder: (context)=>Login()));
       if(result == null){
         setState(()=> error = "Please enter the valid email" );
      //    Navigator.push( context,
      //  MaterialPageRoute(builder: (context)=>Login()));
       }

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
  String validateAddress(String value) {
    String Pattern = r'(^[a-zA-Z]*$)';
    RegExp regExp = new RegExp(Pattern);
    if(value.length==0)
    return 'address is Require';
    else if(!regExp.hasMatch(value)){
      return 'address in character';
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
    String Pattern = r'^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})';
    RegExp regExp = new RegExp(Pattern);
    if(value.length==0)
    return 'password is Require';
    else if(!regExp.hasMatch(value)){
      return 'password in number';
    }
    return null;
   }
    
     String validateCnpassword(String value) {
       _formkey.currentState.save();
    if(value.length==0){
    return 'password is Require';
    }
    else if(_password != value){
      return 'password is not match';
    }
    return null;
  }
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.green,
        title: Text('Register'),
        centerTitle: true,
        ),
        body: Container(
          child: SingleChildScrollView(
            child:
         
        Form(
          key:_formkey,
          autovalidate: _autoValidate,
          child:Container(
            padding:EdgeInsets.all(30),
            child: Column(children: <Widget>[
              TextFormField(
                onTap: (){
                  setState(() {
                    _autoValidateName = true;
                  });
                },
                autovalidate: _autoValidateName ,
                decoration: InputDecoration(labelText: 'Name',icon: Icon(Icons.person)),
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
                decoration: InputDecoration(labelText: 'Email',icon: Icon(Icons.email)),
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
                    _autoValidateAddress = true;
                  });
                },
                autovalidate: _autoValidateAddress,
                decoration: InputDecoration(labelText: 'Address',icon: Icon(Icons.home)),
                keyboardType: TextInputType.text,
                maxLength: 50,
                validator: validateAddress,
                 onChanged: (String val) {
                      _address = val;
                   },
                ),
              TextFormField(
                onTap: (){
                  setState(() {
                    _autoValidateAddress = true;
                  });
                },
                autovalidate: _autoValidateAddress,
                decoration: InputDecoration(labelText: 'Phone',icon:Icon(Icons.mobile_screen_share) ),
                keyboardType: TextInputType.phone,
                validator: validatePhone,
                maxLength: 10,
                 onChanged: (String val) {
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
                decoration: InputDecoration(labelText: 'Password',icon: Icon(Icons.remove_red_eye)),
                keyboardType: TextInputType.number,
                validator: validatePassword,
                maxLength: 6,
                 onChanged: (String val) {
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
                decoration: InputDecoration(labelText: 'Confirm password',icon:Icon(Icons.remove_red_eye)),
                keyboardType: TextInputType.number,
                validator: validateCnpassword,
                maxLength: 6,
                 onChanged: (String val) {
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
      
     ),
        ));
  }
}
   