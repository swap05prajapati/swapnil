//import 'package:flutter/material.dart';
import 'package:firebase/firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopping_project/Screens/login.dart';
import 'package:shopping_project/model/user.dart';
import 'package:shopping_project/provider/appProvider.dart';
//import 'package:shopping_project/services/database.dart';
import 'package:shopping_project/services/userdatabase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthServices
{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User> _userfromFirebaseUser(FirebaseUser user) async {
    return user != null ? User(uid:user.uid):null;
  }

// register with email and password
Future registerWithEmailAndPassword(String _name, String _email, String _password) async{
  try {
    AuthResult result = await _auth.createUserWithEmailAndPassword( email:_email, password: _password);
    FirebaseUser user = result.user;

    // create a new document for user with uid
    await DataBaseServices(uid: user.uid).updateUserData("swapnil",_email, _password);
    return _userfromFirebaseUser(user);
    

  }catch(e){
    print(e.toString());
    return null;

  }
}
// signin with email and password
Future signInWithEmailAndPassword(String _email, String _password) async{
  try{
    AuthResult result = await _auth.signInWithEmailAndPassword(email: _email, password: _password);
    FirebaseUser user = result.user;
    return _userfromFirebaseUser(user);
  }catch(e){
    print(e.toString());
    return null;
  }
}

// sign out
Future<Login>signOut() async{
  await _auth.signOut();
  return Login();

  
}
// getProducts(ProductNotifier productNotifier){
//   Firestore.instance.collection('products').getDocuments();
// }


}