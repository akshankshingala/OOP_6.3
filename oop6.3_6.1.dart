import 'dart:io';

class Distance {
  int? feet;
  int? inches;

  void setDist() {
    stdout.write("Enter Feet : ");
    feet = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Inches : ");
    inches = int.parse(stdin.readLineSync()!);
    CheckDist();
  }

  void CheckDist() {
    if (inches != null && inches! > 12) {
      feet = (feet ?? 0) + 1;
      inches = inches! - 12;
    }
  }

  void display() {
    print("Distance is ${feet ?? 0} feet and ${inches ?? 0} inches");
  }
}
void main(){
  Distance distance = Distance();
  distance..setDist()..CheckDist()..display();
}
