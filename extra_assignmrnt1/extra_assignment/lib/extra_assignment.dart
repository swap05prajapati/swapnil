import 'dart:io';

class Licence
{
  String name;
  String dob;
  String father_name;
  String address;
  void get_detail()
  {
    print('Enter the name:');
    name = stdin.readLineSync();
    print('Enter the date of birth:');
    dob = stdin.readLineSync();
    print('Enter the Father name:');
    father_name = stdin.readLineSync();
    print('Enter the address:');

  }
  void set_detail()
  {
    print('Name:$name');
    print('date of birth:$dob');
    print('Father name:$father_name');
    print('Address:$address');
  }
}