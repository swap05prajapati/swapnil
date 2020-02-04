import 'dart:io';

class Reverse
{
  String str; 
  int i;
  void reverse()
  {
    print('Enter the string...:');
    str = stdin.readLineSync();
    print((str.split('').reversed).join(''));
  }

}