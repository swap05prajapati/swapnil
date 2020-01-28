import 'package:testaap/product.dart';
import 'package:testaap/registration.dart';
import 'dart:io';
//import 'package:testaap/testaap.dart' as testaap;

void main(List<String> arguments) 
//{
  //var p = Product('samsung',3500,10);

//p.cal();
//p.funprint();
  
//}
//{
  //
  //String address;
 // print('enter the string:');
  //address = stdin.readLineSync().toUpperCase();
  //print(address);
//}
//{
  //int number;
  //int i;
  //print('enter the number:');
  //number = int.parse(stdin.readLineSync());
  //int mul;
  //for(i=1;i<=10;i++)
  //{
    //mul = number * i;
    //print(mul);
  //}

//}
{
  int number;
  var arr = new List();
  int r; 
  int large = 0;
  print('enter the number:');
  number = int.parse(stdin.readLineSync());
  while(number!=0)
  {
    r= number%10;
    arr.add(r);
    number = number~/10 ;
  }
  arr.sort();
  for(r=arr.length-1;r>=0;r--)
  {
    large = large * 10 + arr[r];
  }
  print(large);
  
}