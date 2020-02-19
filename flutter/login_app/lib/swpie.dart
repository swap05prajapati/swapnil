import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Swipe extends StatefulWidget {

  @override
  _SwipeState createState() => _SwipeState();
}

class _SwipeState extends State<Swipe> {
  
TextEditingController customController = TextEditingController();

List<String>articals_no;

@override
void initState(){
  articals_no = List<String>.generate(10, (i)=>'Message ${i+1}').toList();
  customController.text = '';
  super.initState();
}

creatAlertdialog(BuildContext context){
  return showDialog(context: context,builder:(context){
    return AlertDialog(
      title: Text('add'),
      content: TextField( 
        controller: customController
      ),
      actions: <Widget>[
        MaterialButton(
          child:Text('add'),
          onPressed: (){
            setState(() {
              if(customController.text.isNotEmpty)
                articals_no.add(customController.text);
              customController.text = '';
            });
            Navigator.of(context).pop();
          },
        )
      ],
    );
  });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:Text('Swipe and Pull'),
          centerTitle:true,
        ),
        body:ListView.builder(
          itemCount: articals_no.length,
          itemBuilder: (context,int index){
            return Dismissible(
              key: Key(articals_no[index]),
              onDismissed: (direction){
                articals_no.removeAt(index);
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('artical_no dismissed'),)
                  );
              },
              background: Container(
                color:Colors.amberAccent,
                ),
              child: ListTile(
                title:Text('${articals_no[index]}'),
              )


            );
          }
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            creatAlertdialog(context);
          },
          child:Icon(Icons.add),
          backgroundColor: Colors.blue,
          ),

      ),

    );
  }
}