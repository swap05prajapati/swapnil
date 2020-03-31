import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class ProductService {
  Firestore _firestore = Firestore.instance;
  String ref = 'products';

  void uploadProduct({String productName, double productPrice, String productDescription,List images}) {
    var id = Uuid();
    String productId = id.v1();

    _firestore.collection(ref).document(productId).setData({
      'Productname':productName,
      'id':productId,
      'price':productPrice,
      'description':productDescription,
      'images':images
    });
  }
}