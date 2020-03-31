import 'package:flutter/material.dart';
import 'package:shopping_project/Screens/adminScreens/addProduct.dart';
import 'package:shopping_project/services/category.dart';
class AdminPage extends StatefulWidget{
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  TextEditingController categoryController = TextEditingController();
  GlobalKey<FormState> _categoryFormKey = GlobalKey();
  CategoryService _categoryService = CategoryService();

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('App Admin'),
        centerTitle: true,
      ),
      endDrawer: Drawer(
        child:ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName:Text('Step2Door Admin'),
              accountEmail:Text('support@step2Door.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor:Colors.white,
                child:Icon(Icons.person),
              ),
              decoration: BoxDecoration(color:Colors.green),
              ),
              ListTile(
                title:Text('Add Product'),
                leading: Icon(Icons.add),
                onTap: (){
                  Navigator.push(context,
         MaterialPageRoute(builder: (context)=>AddProduct()));
                },
              ),
              Divider(),
              ListTile(
                title: Text('Product List'),
                leading: Icon(Icons.list),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                title: Text('Add Category'),
                leading: Icon(Icons.category),
                onTap: (){
                  _categoryAlert();
                },
              ),
              Divider(),
        ],)
      ),
      body: Column(
        children:<Widget>[
          SizedBox(height:20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              
              CircleAvatar(
                backgroundColor: Colors.green,
                maxRadius: 70,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: <Widget>[
                  Icon(Icons.search,color: Colors.white,),
                  SizedBox(
                    height: 10,),
                Text('App users',
                style: TextStyle(
                  color: Colors.white,
                ),),
                ],)
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                maxRadius: 70,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: <Widget>[
                  Icon(Icons.search ,color: Colors.white,),
                  SizedBox(
                    height: 10,),
                Text('search',
                style: TextStyle(
                  color: Colors.white,
                ),),
                ],)
              ),
            ],
          ),
          SizedBox(height:20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              
              CircleAvatar(
                backgroundColor: Colors.green,
                maxRadius: 70,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: <Widget>[
                  Icon(Icons.chat,color: Colors.white,),
                  SizedBox(
                    height: 10,),
                Text('App Messeges',
                style: TextStyle(
                  color: Colors.white,
                ),),
                ],)
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                maxRadius: 70,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: <Widget>[
                  Icon(Icons.notifications,color: Colors.white,),
                  SizedBox(
                    height: 10,),
                Text('App Order',
                style: TextStyle(
                  color: Colors.white,
                ),),
                ],)
              ),
            ],
          ),
          SizedBox(height:20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              
              CircleAvatar(
                backgroundColor: Colors.green,
                maxRadius: 70,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: <Widget>[
                  Icon(Icons.shop,color: Colors.white,),
                  SizedBox(
                    height: 10,),
                Text('App Products',
                style: TextStyle(
                  color: Colors.white,
                ),),
                ],)
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                maxRadius: 70,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: <Widget>[
                  Icon(Icons.add,color: Colors.white,),
                  SizedBox(
                    height: 10,),
                Text('Add products',
                style: TextStyle(
                  color: Colors.white,
                ),),
                ],)
              ),
            ],
          ),
        ]
      )
    );
  }
  void _categoryAlert() {
    var alert = new AlertDialog(
      content: Form(
        key: _categoryFormKey,
        child: TextFormField(
          controller: categoryController,
          validator: (value){
            if(value.isEmpty){
              return 'category cannot be empty';
            }
          },
          decoration: InputDecoration(
            hintText: "add category"
          ),
        ),
      ),
      actions: <Widget>[
        FlatButton(onPressed: (){
          if(categoryController.text != null){
            _categoryService.createCategory(categoryController.text);
          }
          Navigator.pop(context);
        }, child: Text('ADD')),
        FlatButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('CANCEL')),

      ],
    );

    showDialog(context: context, builder: (_) => alert);
  }
}