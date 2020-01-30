import 'package:constructor/constructor.dart' as constructor;

import '../lib/constructor.dart';

void main(List<String> arguments) 
{

  Car obj = Car(34,'Honda','Black');

  obj = Car.getSpeed(52);
  obj = Car.getModel('Benz');
  obj = Car.getColor('blue');

  obj = Car.getSpeed(78);
  obj = Car.getModel('Baleno');
  obj = Car.getColor('Grey');



  
}
