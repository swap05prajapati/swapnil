import 'package:flutter/material.dart';
import 'package:login_app/home.dart';

class Third extends StatefulWidget
{
  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  static List<String> place_photo= [
    'https://static.toiimg.com/photo/35020289/.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/c/c7/Great_Himalaya_view_from_Kufri%2C_Shimla.jpg',
    'https://lh3.googleusercontent.com/proxy/VKkaGLxV3Wzw1VPLv3Szk6bsFOgGDJ1Cjr89zqkQ2v5AnVvRPi9oS296ejdmmSza3FDW0rAgwiBH4ugUSVyxQyJHR0fYI7_psKG0yZW0xZrZHDicOBC-34JCb1yFS-09rfj2gyM'
    'https://tripnetra.com/blog/wp-content/uploads/2019/07/Mahasu-Peak-Tariff.jpg'
    ];
  static List<String> place_detail = [
    'A tiny hill station located just 13 km from Shimla, Kufri lies at an altitude of 9000 ft, and is best known as a ski destination',
    'Kufri is a small hill station in Shimla district of Himachal Pradesh state in India. It is located 20 km from the state capital Shimla on the National Highway No.22',
    'This is an amusement park which features the world’s highest go kart track. Apart from this, there are skiing facilities in addition to pool and several rides',
    'From Kufri there is a thick forest trek that leads one to the highest point in the area, which is the Mahasu Peak'
    ];

    String image= place_photo[0];
    String image_detail = place_detail[0];

    void function(int index) {
    setState(() {
     image = place_photo[index];
      image_detail = place_detail[index];
      
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar:AppBar(
        title:Text('Place List'),
        centerTitle:true,
      ),
      body:Container(
        child:Column(children: <Widget>[
          Expanded(
            flex:4,
            child:Image.network(image,
            height:500,
            width:500,
            ),
          ),
          Expanded(
            flex:1,
            child:Text(image_detail,
            style:TextStyle(
              fontSize:20,
              color: Colors.black,
            ),
            ),
          ),
        ],)
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0, // change on tapping
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('About'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.call),
                 title: Text('Contact'),
            ),
          ],),
          drawer: Drawer(
            child:Container(
              //color:Colors.blue,
              child:ListView(
                padding:EdgeInsets.zero,
                children:<Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color:Colors.blue,
                    ),
                    child:Column(children: <Widget>[
                      Expanded(
                        flex:3,
                        child:Icon(Icons.account_circle,size:40),
                      ),
                      Expanded(
                        flex:1,
                        child:Text('User',
                        style:TextStyle(
                          fontSize:25.0,
                          color:Colors.white,
                        ),
                       ),
                      ),
                      Expanded(
                        child:Text('user@gmail.com',
                        style:TextStyle(
                          fontSize:20.0,
                          color:Colors.white,
                        )),
                      ),
                    ],)
                  ),
                  ListTile(
          leading: Icon(Icons.person),
          title: Text('place_1'),
          onTap: () {
            function(0);
    Navigator.pop(context); 
  },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('place_2'),
          onTap: () {
            function(1);
    // change app state...
    Navigator.pop(context); // close the drawer
  },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('place_3'),
          onTap: () {
            function(2);
    // change app state...
    Navigator.pop(context); // close the drawer
  },
        ),
                  ListTile(
                    leading:Icon(Icons.person),
                    title: Text('place_4'),
                    onTap: () {
                      function(3);
    // change app state...
    Navigator.pop(context); // close the drawer
  },
                  ),
                ],
              ),
            ),
          ),
      );
  }
}