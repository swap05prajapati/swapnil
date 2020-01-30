class Car
{
  int speed;
  String model;
  String color;

  // 
  

  Car(int speed,String model,String color)
  {
    print('speed:$speed');
    print('Model:$model');
    print('Color:$color');
  }


  Car.getSpeed( int speed)
  {
    print(speed);
  }
  Car.getModel(String model)
  {
    print(model);
  }
  Car.getColor(String color)
  {
    print(color);
  }

 

}
