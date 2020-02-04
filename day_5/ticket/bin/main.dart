import 'dart:io';

import 'package:ticket/ticket.dart' as ticket;

import '../lib/ticket.dart';

void main(List<String> arguments) {
  print('.......Welcome booking Plateform........');
  print('Enter the booking option::\n1)Airline \n2) Bus \n3)Railway');
  int op = int.parse(stdin.readLineSync());
  switch(op)
  {
    case 1:Airline obj2 = Airline();
           obj2.get1_detail();
           obj2.disp1_data();
           print('Booking successful done..');
           break;

    case 2:Bus obj3 = Bus();  
           obj3.get1_detail();
           obj3.disp1_data();
           print('Booking successful done..');
           break;    

    case 3:Railway obj4 = Railway();
           obj4.get1_detail();
           obj4.disp1_data();
           print('Booking successful done..');
           break; 

    default: print('Enter option is wrong');
           break;        

  }
}
