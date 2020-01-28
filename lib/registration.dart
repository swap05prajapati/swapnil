class Registration
{
  String name;
  int age;
  String email_id;
  String phone;
  Registration(name,age,email_id,phone)
  {
    this.name=name;
    this.age=age;
    this.email_id=email_id;
    this.phone=phone;
  }
  void print_data()
  {
    print(name);
    print(age);
    print(email_id);
    print(phone);
  }

}