import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_project/Screens/cartitem.dart';
import 'package:shopping_project/Screens/checkout.dart';
import 'package:shopping_project/Screens/home.dart';
import 'package:shopping_project/model/product.dart';
import 'package:shopping_project/provider/appProvider.dart';

class Foodgrains extends StatefulWidget {
  @override
  _FoodgrainsState createState() => _FoodgrainsState();
}
class _FoodgrainsState extends State<Foodgrains> {

  int _selectedIndex = 0;
void _onItemTapped(int index) {
  setState(() {
   _selectedIndex = index;
  });
  if( _selectedIndex == 0)
   {
     Navigator.push(context,
         MaterialPageRoute(builder: (context)=>Home()));

   }
   if(_selectedIndex == 1)
   {
      Navigator.push(context,
         MaterialPageRoute(builder: (context)=>CartItem()));
   }
   if(_selectedIndex == 2)
   {
     Navigator.push(context,
         MaterialPageRoute(builder: (context)=>PaymentTotal()));
   }
}
@override
  void initState() {
    // TODO: implement initState
    //ProductNotifier productNotifier = Provider.of<ProductNotifier>(context,listen: false); 
    super.initState();
  }

  // List<int> count = [0, 0, 0, 0, 0, 0, 0];
  // List<Map<String, dynamic>> dataItems;
  // String image;
  // String productName;
  // String productPrice;

  // @override
  // void initState() {
  //   super.initState();
  //   dataItems = [
  //     {
  //       'image': 'assets/images/rice.jpg',
  //       'productName': 'Rice (5kg)',
  //       'price': '500',
  //       'item_count': 0
  //     },
  //     {
  //       'image': 'assets/images/pulse.jpg',
  //       'productName': 'Toor Dal (500grm)',
  //       'price': '80',
  //       'item_count': 0
  //     },
  //     {
  //       'image': 'assets/images/rava.jpg',
  //       'productName': 'Rava (500grm)',
  //       'price': '60',
  //       'item_count': 0
  //     },
  //     {
  //       'image': 'assets/images/oil.jpg',
  //       'productName': 'Mustard Oil (1Ltr)',
  //       'price': '140',
  //       'item_count': 0
  //     },
  //     {
  //       'image': 'assets/images/garammasala.jpg',
  //       'productName': 'Garam Masala (250grm)',
  //       'price': '100',
  //       'item_count': 0
  //     },
  //     {
  //       'image': 'assets/images/aata.png',
  //       'productName': 'Aata (5kg)',
  //       'price': '400',
  //       'item_count': 0
  //     },
  //   ];
  //   int index = 0;
  //   image = 'image';
  //   productName = 'productName';
  //   productPrice = 'price';
  //   debugPrint(
  //       'Data - image : ${dataItems.elementAt(index)[image]} ,productName : ${dataItems.elementAt(index)[productName]} ,productPrice : ${dataItems.elementAt(index)[productPrice]} ');
  //           print('init finish');

  // }
  // void incrementCounter(int index) {
  //   setState(() {
  //     count[index]++;
  //   });
  // }
  // void decrementCounter(int index) {
  //   setState(() {
  //     if (count[index] > 0) count[index]--;
  //   });
  // }
  @override
  Widget build(BuildContext context) {

    ProductNotifier  productNotifier = Provider.of<ProductNotifier>(context);
    
    print('building UI');
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
              Icons.shopping_cart,
              color: Colors.black,
            ),
            title: Text(
              'Cart',
              style: TextStyle(color: Colors.black),
            ),
          ),
        //   onTap:((){
        //     Navigator.push(context,
        // MaterialPageRoute(builder: (context)=>CartItem()));
        //   })
          BottomNavigationBarItem(
            icon: Icon(Icons.payment, color: Colors.black),
            title: Text(
              'Checkout',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
      ),
      
      appBar: AppBar(
        title: Text("Food grains & OIl Masala"),
        backgroundColor: Colors.green,
      ),
      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2, crossAxisSpacing: 5.0, mainAxisSpacing: 30),
      //   scrollDirection: Axis.vertical,
      //   //itemCount:product.length,
      //   itemBuilder: (BuildContext context, int  index) {
      //     return Card(
      //       child: Stack(
      //         alignment: FractionalOffset.bottomCenter,
      //         ///child: GestureDetector(
      //           //child: SingleChildScrollView(
                  
      //             //child: Column(
      //               children: <Widget>[
                      
      //                   // Text(product[index].itemName),
      //                   //  Text('Rs. ${product[index].itemPrice}',
      //                   // // style: TextStyle(
      //                   //     fontSize: 25, fontWeight: FontWeight.bold),
      //                // ),
                      
      //                 // Container(
      //                 //   child: Column(
      //                 //     children: <Widget>[
      //                 //       Row(
      //                 //         children: <Widget>[
      //                 //           IconButton(
      //                 //             icon: Icon(Icons.remove),
      //                 //             onPressed: () {
                                    
      //                 //               setState(() {
      //                 //                 dataItems
      //                 //                     .elementAt(index)['item_count']--;
      //                 //               });
      //                 //             },
      //                 //           ),
      //                 //           Row(
      //                 //             children: <Widget>[
      //                 //               Text(dataItems
      //                 //                   .elementAt(index)['item_count']
      //                 //                   .toString()),
      //                 //             ],
      //                 //           ),
      //                 //           Row(
      //                 //             children: <Widget>[
      //                 //               IconButton(
      //                 //                 icon: Icon(Icons.add),
      //                 //                 onPressed: () {
      //                 //                   incrementCounter(0);
      //                 //                   setState(() {
      //                 //                     dataItems
      //                 //                         .elementAt(index)['item_count']++;
      //                 //                   });
      //                 //                 },
      //                 //               ),
      //                 //             ],
      //                 //           )
      //                 //         ],
      //                 //       ),
      //                 //     ],
      //                 //   ),
      //                 // ),
      //               ],
      //             //),
      //           //),
      //           //onTap: () {
      //             // implement logic
      //          // },
      //         //),
      //       ),
      //     );
      //   },
      // ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title:Text(productNotifier.productList[index].name),
            subtitle: Text(productNotifier.productList[index].category),
          );

        },
        itemCount: productNotifier.productList.length,
        separatorBuilder: (BuildContext context, int index){
          return  Divider(
            color:Colors.black,
          );
        }
    
    ),
    );
  }
}
