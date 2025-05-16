// max from two
import 'dart:io';

void main() {
  stdout.write('Enter num: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('Enter num: ');
  int b = int.parse(stdin.readLineSync()!);
  print(maxNum(a, b));
  print(maxNum(b));
}

num maxNum(num a, [num b = 0]) => a > b ? a : b;
