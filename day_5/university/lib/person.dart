
import 'dart:io';
import 'package:university/person.dart';

 abstract class Person
{
  String name;
  String phone;
  String email;
  person_data();
  person_detail();
}
class Student implements Person
{
  String stu_no;
  int avg_mark;
  void student_detail()
  {
    print('Enter the student no.:');
    stu_no = stdin.readLineSync();
    print('Enter the average mark:');
    avg_mark=int.parse(stdin.readLineSync());
  }

  @override
  String email;

  @override
  String name;

  @override
  String phone;

  @override
  void person_data() {
    // TODO: implement person_data
    print('Enter the person name:');
    name = stdin.readLineSync();
    print('Enter the phone:');
    phone = stdin.readLineSync();
    print('Enter the email:');
    email = stdin.readLineSync();
  }

  @override
  void person_detail() {
    // TODO: implement person_detail
    print('Name:$name');
    print('Phone:$phone');
    print('Email:$email');
  }


}
class Professor implements Person
{

  @override
  String email;

  @override
  String name;

  @override
  String phone;

  @override
  person_data() {
    // TODO: implement person_data
   
  }

  @override
  person_detail() {
    // TODO: implement person_detail
    
  }
  
}