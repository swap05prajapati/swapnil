import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:emoji_picker/emoji_picker.dart';


class Colorgame extends StatefulWidget
{
  @override
  _ColorgameState createState() => _ColorgameState();
}

class _ColorgameState extends State<Colorgame> {

  final Map<String , bool> score = {};

  final Map choices = {
    '🍅':Colors.red,
    '🍏':Colors.green,
    '📙':Colors.orange,
    '🍇':Colors.purple,
    '🌻':Colors.yellow,
    '🐪':Colors.brown,
  };
   int seed =0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text('Score ${score.length} /6'),
        backgroundColor: Colors.orange,
        
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.refresh),
        onPressed: (){
          setState(() {
            score.clear();
            seed++;
          });
        },
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: choices.keys.map((emoji){
              return Draggable<String>(
                data: emoji,
                child:Emoji(emoji:score[emoji]== true ? '✅':emoji),
                feedback: Emoji(emoji:emoji),
                childWhenDragging: Emoji(emoji:'🍃'),
                );

            }).toList()
            
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: 
            choices.keys.map((emoji)=> _buildDragTarget(emoji)).toList()
            ..shuffle(Random(seed)),

          )
        ],


      ),
    );
  }
Widget _buildDragTarget(emoji){
  return DragTarget<String>(
    builder:(BuildContext context,List<String> incoming,  List rejected){
      if(score [emoji] == true){
        return Container(
          color:Colors.white,
          child:Text('Correct'),
          alignment: Alignment.center,
          height: 80,
          width: 200,
        );

      }
      else{
        return Container(color: choices[emoji], height: 80 , width: 200,); 
      }

    }, 
    onWillAccept: (data)=> data == emoji,
    onAccept: (data){
      setState(() {
          score[emoji] = true;
        });

    },
    onLeave: (data){
  
    },
  );
}
}
class Emoji extends StatelessWidget {
  Emoji({Key key, this.emoji}) : super(key: key);
  final String emoji;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        padding: EdgeInsets.all(10),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}