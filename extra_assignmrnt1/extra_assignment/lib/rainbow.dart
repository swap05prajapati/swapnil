//import 'dart:html';
import 'dart:io';

class Rainbow
{
  var List = ['red','orange','yellow','green','blue','indgio','violet'];
  String colour;
  int i;
  void get_detail()
  {
    print('Rainbow colour list:$List');
  }
  void colour_choice()
  {
    print('Enter the your favourite colour:');
    colour = stdin.readLineSync();
    for(i=0; i<List.length; i++)
    {
    if(colour==List[i])
      {
        print('Your favourite colour: $colour');
      }
      else{
        print('no option');
      }
    }
  }
}