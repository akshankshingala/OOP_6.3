import 'dart:io';

class Car{
  int? _Name;
  String? _Price;
  String? _colour;

  void setAnimalData(){
    stdout.write("Enter Car Name : ");
    _Name = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Enter Car price : ");
    _Price = stdin.readLineSync();
    stdout.write("Enter Car colour : ");
    _colour = stdin.readLineSync();
  }
  void getAnimalData(){
    print("Animal Age : $_Name ");
    print("Animal Name : $_Price");
    print("Animal Colour : $_colour");
  }
}
import 'Que2Class.dart';

void main(){
  Car animals = Car();
  animals..setAnimalData()..getAnimalData();
}