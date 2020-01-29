class Online
{
  int fair;
  void taxi_fair(int distance)
  {
    if(distance<=20)
    {
      fair = 40;
      print(fair);
    }
    else if(distance>20)
    {
      fair = 40 + (distance * 10);
      print('online fair is:$fair');
    }
  }

}
class Classic
{
  int fair;
  int time;
  void taxi_fair(int distance)
  {  
    time = distance~/80;
    if(distance<=20)
    {
      fair = 30;
      print('classic fair is:$fair');
    }
    else if(distance>20)
    {
      fair = 30 +(distance * 15) + (time *15);
      print(fair);
    }
  }
}