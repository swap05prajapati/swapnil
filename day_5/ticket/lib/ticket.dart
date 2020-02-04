import 'dart:io';

class Booking
{
 String name;
 String phone;
 String email_id;
 int op;
 void get_detail()
 {
   print('Enter the name:');
   name = stdin.readLineSync();
   print('Enter the phone_no.:');
   phone = stdin.readLineSync();
   print('Enter the email_id:');
   email_id = stdin.readLineSync();
 }
 void disp_data()
 {
   print('Name: $name');
   print('phone_no: $phone');
   print('email_id: $email_id');
 }
}
class Custmor 
{
  String street;
  String state;
  String city;
  String pin_code;
  String country;
  Booking obj; 
  Custmor(){
    obj = Booking();
    obj.get_detail();
    obj.disp_data();
  }

  void get1_detail()
  {
    print('Enter the street:');
    street = stdin.readLineSync();
    print('Enter the state:');
    state = stdin.readLineSync();
    print('Enter the city:');
    
    city = stdin.readLineSync();
    print('Enter the pin:');
    pin_code = stdin.readLineSync();
    print('Enter the country:');
    country = stdin.readLineSync();
  }
  void disp1_data()
  {
    print('street: $street');
    print('state: $state');
    print('city: $city');
    print('Pin_code: $pin_code');
    print('Country: $country');

  }
}
class Airline extends Custmor
{
  get1_detail();
  disp1_data();
}
class Bus extends Custmor
{
  get1_detail();
  disp1_data();
}
class Railway extends Custmor
{
  get1_detail();
  disp1_data();

}

