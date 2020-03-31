
import 'package:cloud_firestore/cloud_firestore.dart';
class Product{
  // static const ID = 'id';
  // static const CATEGORY = 'category';
  // static const NAME = 'name';
  // static const PRICE = 'price';
  // static const DESCRIPTION = 'description';
  // static const IMAGE_URL = 'imageUrl';

  String _id;
  String _category;
  String _productname;
  String _imageUrl;
  double _price;
  String _description;


  //getter
  String get id => id;
  String get category => _category;
  String get name => _productname;
  String get image => _imageUrl;
  double get price => _price;
  String get description => _description; 

  
//named constructer
  Product.fromMap(Map<String,dynamic>data){
    _id = data['id'];
    _category = data['category'];
    _productname = data['name'];
    _price = data['price'];
    _description = data['description']; 
    _imageUrl = data['images'];  
    }
} 

// List<GroceryProduct>groceryItems = [
//   GroceryProduct.items(
//         itemImage: '',
//         itemName: 'Rice (5kg)',
//         itemPrice: 500,
//         //'item_count': 0
//   ),
//       GroceryProduct.items(
//         itemImage: '',
//         itemName: 'Toor Dal (500grm)',
//         itemPrice: 80,
//         //'item_count': 0
//       ),
//     GroceryProduct.items(
//         itemImage: '',
//         itemName: 'Rava (500grm)',
//         itemPrice: 60,
//         //'item_count': 0
//     ),
//       GroceryProduct.items(
//         itemImage: '',
//         itemName: 'Mustard Oil (1Ltr)',
//         itemPrice: 140,
//         //'item_count': 0
//       ),
//       GroceryProduct.items(
//         itemImage: '',
//         itemName: 'Garam Masala (250grm)',
//         itemPrice: 100,
//         //'item_count': 0
//       ),
//       GroceryProduct.items(
//         itemImage: 'assets/images/aata.png',
//         itemName: 'Aata (5kg)',
//         itemPrice: 400,
//         //'item_count': 0
//       ),
//     ];