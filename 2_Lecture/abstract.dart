abstract class Shape{
  void area(); //abstract function
  void printhello(){print("hello");}
}

class Circle extends Shape{
  final PI = 3.14;
  int r = 2;
  Circle(this.r);
  void area(){
    print(PI * this.r * this.r);
  } 
}

void main(){
  Circle c1 = new Circle(2);
  c1.area();
  c1.printhello();
}