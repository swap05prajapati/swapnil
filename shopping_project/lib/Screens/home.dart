import 'package:carousel_pro/carousel_pro.dart';
//import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:shopping_project/Screens/admin.dart';
import 'package:shopping_project/Screens/adminScreens/admin.dart';
import 'package:shopping_project/Screens/delivery.dart';
import 'package:shopping_project/Screens/login.dart';
import 'package:shopping_project/Screens/myorder.dart';
import 'package:shopping_project/Screens/profile.dart';
import 'package:shopping_project/model/item.dart';
import 'package:shopping_project/services/auth.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

  final AuthServices _auth = AuthServices();

  Future<String> getStringValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String _email = prefs.getString('email');
  return _email;
   }
  @override
  Widget build(BuildContext context) {
    void show_dialog(){
      showDialog(
        context:context,
        builder:(context){
          return AlertDialog(
            title: Text('About us'),
            content:Container(
              height: 200,
              width:300,
              child:Text('We will be the premier fresh-focused specialty food retailer known for our carefully curated product offerings and for delivering an unparalleled shopping experience, inspiring our guests to try new products, entertain and cook with confidence and assemble easy meals.')
            ),

          );
        }

      );
    }
    void show_dialog1(){
      showDialog(
        context:context,
        builder:(context){
          return AlertDialog(
            title: Text('Contact Us'),
            content:Container(
              height: 200,
              width:300,
              child:Text('+91-9876543201\n\n+91-8796543210'),
            ),

          );
        }

      );
    }
    Widget image_carousel = new Container(
      height: 300.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/home.jpg'),
          AssetImage('assets/images/apples.jpg'),
          AssetImage('assets/images/dry_fruits.jpg'),
          AssetImage('assets/images/foodgrains&oil.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions,
              color: Colors.black,
            ),
            title: Text(
              'Subscription',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            title: Text(
              'Cart',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: Text('Step2door'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Kumar Ankit'),
              accountEmail: Text(''),
              //FutureBuilder(
              //   future: getStringValuesSF(),
                // builder:(context, AsyncSnapshot snp){
                //   print(snp.data);
                //   return Text(snp.data);
                // },
                //),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              decoration: new BoxDecoration(color: Colors.green),
            ),
            ListTile(
              title: Text('My Account'),
              leading: Icon(
                Icons.person,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.push(context,
         MaterialPageRoute(builder: (context)=>AdminPage()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('My Order'),
              leading: Icon(
                Icons.shopping_basket,
                color: Colors.green,
              ),
              onTap: () {
                Navigator.push(context,
         MaterialPageRoute(builder: (context)=>MyOrder()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Delivery Address'),
              leading: Icon(
                Icons.home,
                color: Colors.red,
              ),
              onTap: () {
                Navigator.push(context,
         MaterialPageRoute(builder: (context)=>DeliveryAddress()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Profile Settings'),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.push(context,
         MaterialPageRoute(builder: (context)=>Profile()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('About Us'),
              leading: Icon(
                Icons.help,
                color: Colors.blue,
              ),
              onTap: () {
                show_dialog();
              },
            ),
            Divider(),
            ListTile(
              title: Text('Contact Us'),
              leading: Icon(
                Icons.contacts,
                color: Colors.orange,
              ),
              onTap: () {
                show_dialog1();
              },
            ),
            Divider(),
            ListTile(
              title: Text('Sign out'),
              leading: Icon(
                Icons.power_settings_new,
                color: Colors.orange,
              ),
              onTap: () async{
                await _auth.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );

              },
            ),
            Divider(),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Shop By Category',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            constraints: BoxConstraints.expand(height: 250),
            alignment: Alignment.center,
            child: GestureDetector(
              child: Image.asset(
                "assets/images/FoodgrainsOilMasala.jpg",
                fit: BoxFit.contain,
              ),
              onTap: () {
                print('On Click og image');

              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Foodgrains()),

                );
              },
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: FlatButton(
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Foodgrains()),
                );
                
              },
              child: Text(
                'Food & Grains',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
              constraints: BoxConstraints.expand(height: 300),
              alignment: Alignment.center,
              child: GestureDetector(
                child: Image.asset(
                  "assets/images/milk&bakery.jpg",
                  fit: BoxFit.contain,
                ),
                onTap: () {
                  setState(() {

                  });
                },
              )),
          Container(
            alignment: Alignment.topCenter,
            child: FlatButton(
              onPressed: () {
                setState(
                  () {},
                );
              },
              child: Text(
                'Milk & Bread',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints.expand(height: 250),
            alignment: Alignment.center,
            child: GestureDetector(
              child: Image.asset(
                "assets/images/fruit_and_vegetable.jpg",
                fit: BoxFit.contain,
              ),
              onTap: () {
                print('inside on tap of image');
                setState(() {});
              },
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: FlatButton(
              onPressed: () {
                setState(
                  () {},
                );
              },
              child: Text(
                'Fruits & Vegitables',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}