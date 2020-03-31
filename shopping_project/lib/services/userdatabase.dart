import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseServices {

   final String uid;
   DataBaseServices({this.uid});

  // Collection References 
  final CollectionReference userCollection = Firestore.instance.collection('user');
  

  Future updateUserData(String name, String emailId, String password) async{
    return await userCollection.document(uid).setData({
      'name':name,
      'emaiId':emailId,
      'password':password,
    });
  }


}