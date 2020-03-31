import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopping_project/services/category.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopping_project/services/product.dart';

class AddProduct extends StatefulWidget{
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  CategoryService _categoryService = CategoryService();
  ProductService productService = ProductService();
  GlobalKey<FormState>_formkey = GlobalKey<FormState>();
  TextEditingController productNameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  List<DocumentSnapshot>categories = <DocumentSnapshot>[];
  List<DropdownMenuItem<String>>categoriesDropDown=<DropdownMenuItem<String>>[];
  String _currentCategory;
  File _image1;
  File _image2;
  File _image3;
  File tempImg;

  @override
  void initState(){
    _getCategories();
        //categoriesDropDown = getCategoriesDropdown();
        //_currentCategory = categoriesDropDown[0].value;
      }
      List<DropdownMenuItem<String>>getCategoriesDropdown(){
        List<DropdownMenuItem<String>> items= new List();
        for(int i=0 ; i < categories.length; i++){
          setState((){
          items.insert(0,DropdownMenuItem(child: Text(categories[i].data['category']),
          value:categories[i].data['category'],));
          });    
        }
        print(items.length);
        return items;
          }
      @override
      Widget build(BuildContext context) {
        // TODO: implement build
        var changeSelectedCategory;
        return Scaffold(
          appBar: AppBar(
            backgroundColor:Colors.green,
            leading:Icon(Icons.close,color:Colors.black),
            title:Text('Add Products'),
            centerTitle:true,
          ),
          body:Form(
            key:_formkey,
            child: ListView(
              children:<Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: OutlineButton(
                        borderSide: BorderSide(color:Colors.green.withOpacity(0.5),width:2.0),
                        onPressed: (){
                          _selectImage(ImagePicker.pickImage(source: ImageSource.gallery),1);
                                                  },
                                                  child:_displayChild1(),
                                                  // child:Padding(
                                                  //   padding: EdgeInsets.fromLTRB(14.0,70.0,14.0,70),
                                                  //   child:Icon(Icons.add,color:Colors.black),
                              
                                                  // ),
                                                ),
                                                                ),
                                              ),
                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsets.all(8.0),
                                                                  child: OutlineButton(
                                                  borderSide: BorderSide(color:Colors.green.withOpacity(0.5),width:2.0),
                                                  onPressed: (){
                                                    _selectImage(ImagePicker.pickImage(source: ImageSource.gallery),2);
                                                  },
                                                  child: _displayChild2(),
                                                  // child:Padding(
                                                  //   padding: EdgeInsets.fromLTRB(14.0,70,14.0,70),
                                                  //   child:Icon(Icons.add,color:Colors.black),
                              
                                                  // ),
                                                ),
                                                                ),
                                              ),
                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsets.all(8.0),
                                                                  child: OutlineButton(
                                                  borderSide: BorderSide(color:Colors.green.withOpacity(0.5),width:2.0),
                                                  onPressed: (){
                                                    _selectImage(ImagePicker.pickImage(source: ImageSource.gallery),3);
                                                  },
                                                  child: _displayChild3(),

                                              //     child:Padding(
                                              //       padding: EdgeInsets.fromLTRB(14.0,70,14.0,70),
                                              //       child:Icon(Icons.add,color:Colors.black),
                              
                                              //     ),
                                                ),
                                               ),
                                              ),
                                            
                                          ],),
                                          Text('Enter the product name',style: TextStyle(color:Colors.green),),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: TextFormField(
                                              controller: productNameController,
                                              decoration: InputDecoration(
                                                hintText:  'Product Name',
                                              ),
                                              validator: (value){
                    if(value.isEmpty){
                      return 'You must enter the product name';
                    }
                  },
                                              
                                            ),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('Category: ', style: TextStyle(color: Colors.red),),
                                              ),
                                              DropdownButton(items: categoriesDropDown, onChanged: changeSelectedCategory, value: _currentCategory,),
                                            ],
                                          ),
                                          Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Price',
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'You must enter the product name';
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  controller: descriptionController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Description',
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'You must enter the product name';
                    }
                  },
                ),
              ),
                                          Padding(
                                            padding: const EdgeInsets.all(50.0),
                                            child: FlatButton(
                                              color: Colors.red,
                                              textColor: Colors.white,
                                              child:Text('add Product'),
                                              onPressed:(){
                                                validateAndUpload();
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                     ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  }
                                                                                                
                                                                                                  void _getCategories() async{
                                                                                                    List<DocumentSnapshot> data = await _categoryService.getCategories();
                                                                                                    setState(() {
                                                                                                      print(data.length);
                                                                                                      categories = data;
                                                                                                      categoriesDropDown = getCategoriesDropdown();
                                                                                                      _currentCategory = categories[0].data['category'];
                                                                                                    });
                                                                                                  }
                                                                                            
                                                                                              changeSelectCategory(String selectedCategory) {
                                                                                                setState(()=>_currentCategory = selectedCategory);
                                                                                              }
                                                                          
                                                                            void _selectImage(Future<File> pickImage,int imageNumber) async{
                                                                               File tempImg = (await pickImage);
                                                                              switch(imageNumber){
                                                      case 1:  setState(() => _image1 = tempImg);
                                                      break;
                                                      case 2:  setState(() => _image2 = tempImg);
                                                      break;
                                                      case 3:  setState(() => _image3 = tempImg);
                                                      break;
                                                    }
                                                  }
                                                  Widget _displayChild1() {
    if(_image1 == null){
      return Padding(
        padding: const EdgeInsets.fromLTRB(14, 70, 14, 70),
        child: new Icon(Icons.add, color: Colors.green,),
      );
    }else{
      return Image.file(_image1, fit: BoxFit.fill, width: double.infinity,);
    }
 }

  Widget _displayChild2() {
    if(_image2 == null){
      return Padding(
        padding: const EdgeInsets.fromLTRB(14, 70, 14, 70),
        child: new Icon(Icons.add, color: Colors.green,),
      );
    }else{
      return Image.file(_image2, fit: BoxFit.fill, width: double.infinity,);
    }
  }

  Widget _displayChild3() {
    if(_image3 == null){
      return Padding(
        padding: const EdgeInsets.fromLTRB(14, 70, 14, 70),
        child: new Icon(Icons.add, color: Colors.green,),
      );
    }else{
       return Image.file(_image3, fit: BoxFit.fill, width: double.infinity,);
    }
  }
                                                
                                                  void validateAndUpload() async{
                                                    if(_formkey.currentState.validate()){
                                                      if(_image1 != null && _image2 != null && _image3 != null){
                                                  String imageUrl1;
                                                  String imageUrl2;
                                                  String imageUrl3;
                                                  final FirebaseStorage storage = FirebaseStorage.instance;
                                                final String picture1 = "1${DateTime.now().millisecondsSinceEpoch.toString()}.jpg";
                                                StorageUploadTask task1 = storage.ref().child(picture1).putFile(_image1);
                                                final String picture2 = "2${DateTime.now().millisecondsSinceEpoch.toString()}.jpg";
                                                StorageUploadTask task2 = storage.ref().child(picture2).putFile(_image2);
                                                final String picture3 = "3${DateTime.now().millisecondsSinceEpoch.toString()}.jpg";
                                                StorageUploadTask task3 = storage.ref().child(picture3).putFile(_image3);

                                                StorageTaskSnapshot snapshot1 = await task1.onComplete.then((snapshot) => snapshot);
                                                StorageTaskSnapshot snapshot2 = await task2.onComplete.then((snapshot) => snapshot);
                                                task3.onComplete.then((snapshot3) async{
                                                  imageUrl1 = await snapshot1.ref.getDownloadURL();
                                                  imageUrl2 = await snapshot2.ref.getDownloadURL(); 
                                                  imageUrl3 = await snapshot3.ref.getDownloadURL();
                                                  List<String>imagelist = [imageUrl1,imageUrl2,imageUrl3];

                                                  productService.uploadProduct(
                                                  productName: productNameController.text,
                                                  productPrice: double.parse(priceController.text),
                                                  productDescription: descriptionController.text,
                                                  images:imagelist,
                                                  );
                                                  _formkey.currentState.reset();
                                                  //setState(() => isLoading = false);
                                                  Fluttertoast.showToast(msg: 'product added');  

                                                });
                                                
                                                        
                                                      }
                                                      else{
                                                        Fluttertoast.showToast(msg: 'all the images must be provided');
                                                      }
                                                    }
                                                  }
}