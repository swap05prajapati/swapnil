class Product
{
  String name;
  int price;
  int discount;
  double actual_price;
Product(String name,int price,int discount)
{
  this.name=name;
  this.price=price;
  this.discount=discount;
}
void cal()
{
actual_price= price-((price * discount)/100);
}
void funprint()
{
  print(name);
  print(price);
  print(discount);
  print(actual_price);
}
}
