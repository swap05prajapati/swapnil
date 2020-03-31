import 'dart:collection';
//import 'dart:typed_data';

//import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:shopping_project/model/product.dart';
//import 'package:shopping_project/services/product.dart';

class ProductNotifier with ChangeNotifier{
  List<Product> _productList =[];
  Product _currentProduct;


  //getter
  UnmodifiableListView<Product> get productList => UnmodifiableListView(_productList);

  Product get currentProduct => _currentProduct;

  //setter
  set productList(List<Product>productList){
   _productList = _productList;
   notifyListeners();
  }

  set currentProduct(Product product){
    _currentProduct = product;
    notifyListeners(); 
  }

}
  