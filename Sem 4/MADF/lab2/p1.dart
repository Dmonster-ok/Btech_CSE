// Positive or not
import 'dart:io';
void main(){

  stdout.write('Enter num: ');
  num n = num.parse(stdin.readLineSync()!);

  print((n > 0)?'Positive':'Negative');
}