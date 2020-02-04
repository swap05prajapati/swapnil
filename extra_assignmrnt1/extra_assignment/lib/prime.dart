class Prime
{
  int number;
  int i;
  void prime_no()
  {
    print('prime no form 1 to 100..');
    for(number=1;number<=100;number++)
    {
      for(i=2;i<number;i++)
      {
        if(number%i==0)
        break;
      }
      if(number==i)
      {
      print(number);
      }
    }
  }

}