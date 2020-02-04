import 'dart:io';

import 'package:extra_assignment/extra_assignment.dart' as extra_assignment;
import 'package:extra_assignment/prime.dart';
import 'package:extra_assignment/rainbow.dart';
import 'package:extra_assignment/string.dart';

import '../lib/extra_assignment.dart';

void main(List<String> arguments) {
  print('Enter the question no:\n1) Licence\n2) Rainbow\n3) Prime_no.\n4) string');
  int op = int.parse(stdin.readLineSync());
  switch(op)
  {
   case 1:Licence obj = Licence();
  int age;
  print('Apply for 4 wheeler driving licence...');
  print('Enter the age:');
  age = int.parse(stdin.readLineSync());
  if(age>=18)
  {
    obj.get_detail();
    obj.set_detail();
  }
  else{
    print('you are not eligible');
  }
  break;
  case 2:Rainbow obj3 = Rainbow();
         obj3.get_detail();
         obj3.colour_choice();
         break;

  case 3:Prime obj4 = Prime(); 
         obj4.prime_no();   
         break;

  case 4:Reverse obj5 = Reverse();
         obj5.reverse();
         break;
  default: print('unknown option');      

  }


}
