//sum of 2
import 'dart:io';

void main(){
  stdout.write("Enter num: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter num: ");
  int b = int.parse(stdin.readLineSync()!);
  print("sum: ${a + b}");
}