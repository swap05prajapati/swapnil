import 'package:day_4/day_4.dart';
import 'dart:io';
import 'dart:math';
import 'dart:collection';

void main(List<String> arguments) {
  /* ...........ascending order..............*/
  var number = List();
  int n;
  print('Enter the no of element:');
  n = int.parse(stdin.readLineSync());

  for(var i=0; i<n; i++)
  {
    number.add(int.parse(stdin.readLineSync()));
  }
  number.sort();
  print(number);

  /*.............product_bill.............*/
  int number;
  var price = List();
  var total = 0;
  String country;
  double currency;
  print('enter the no. of product:');
  number = int.parse(stdin.readLineSync());

  print('enter the price of product:');
  for(int i=0; i<number; i++)
  {
    price.add(int.parse(stdin.readLineSync()));
    total = total+price[i];
  }

  print('enter the country name:');
  country = stdin.readLineSync();
  
  if(country=='india')
  {
    print('the total amount pay:$total');
  }
  else
  {
    print('enter the respective country currency:');
    currency = double.parse(stdin.readLineSync());
    total = total~/currency;
    print('total amount:$total');
  }

  /*...............shopping_mall...........*/
  var length = List();
  int queue;
  
  print('enter the no of queue:');
  queue = int.parse(stdin.readLineSync());

  print('enter the each queue length:');
  for(var i=0; i<queue; i++)
  {
    length.add(int.parse(stdin.readLineSync()));
  }
  var length1 = length.map((element)=>element).toList();
  length1.sort();
  int short = length.indexOf(length1[0]);
print('enter the ${short+1} queue');


}
