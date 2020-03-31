import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopping_project/model/product.dart';
import 'package:shopping_project/provider/appProvider.dart';


class ProductServices{

  Firestore _firestore = Firestore.instance;
  String collection = 'products';

  getProducts(ProductNotifier productNotifier)async{
    QuerySnapshot snapshot = await Firestore.instance.collection('products').getDocuments();
    print(snapshot);
    List<Product> _productList = [];

    snapshot.documents.forEach((document){
      Product product = Product.fromMap(document.data);
      _productList.add(product);
    });
    productNotifier.productList = _productList;
    print(_productList);
  } 
}