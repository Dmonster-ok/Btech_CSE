// find largest from 3 nums
import 'dart:io';

void main(){
  stdout.write('Enter a num: ');
  num a = num.parse(stdin.readLineSync()!);
  stdout.write('Enter a num: ');
  num b = num.parse(stdin.readLineSync()!);
  stdout.write('Enter a num: ');
  num c = num.parse(stdin.readLineSync()!);

  num max = a > b && a > c ? a : b > c ? b : c;
  print('Largest num: $max');
}