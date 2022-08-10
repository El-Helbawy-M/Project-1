import 'dart:io';

import 'dart:math';

import 'models/bank_system.dart';
import 'models/shape.dart';


// "mohamed","m@gmail.com",1,"mahllah",010999999,2000

void main(List<String> arguments) {
  Shape circle = Circle(5);
  circle.getArea();
  circle.getPerimeter();
  Shape r = Reactangle(5, 10);
  r.getPerimeter();
  r.getArea();





}

