import 'dart:math';

abstract class Shape{
  void getPerimeter();
  void getArea();
}

class Reactangle implements Shape{
  double height,width;
  Reactangle(this.height,this.width);
  @override
  void getArea() => print(height * width);

  @override
  void getPerimeter() => print((height + width)*2);
}

class Circle implements Shape{
  double radius;
  Circle(this.radius);
  @override
  void getArea() => print(pi * pow( radius, 2));

  @override
  void getPerimeter() => print(2*pi*radius);
  
}
