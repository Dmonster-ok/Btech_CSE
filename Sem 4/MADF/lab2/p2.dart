// simple calcultor
import 'dart:io';
void main(){
  stdout.write('Enter a num: ');
  num a = num.parse(stdin.readLineSync()!);
  stdout.write('Enter a num: ');
  num b = num.parse(stdin.readLineSync()!);
  stdout.write('Enter a opration: ');
  String o = stdin.readLineSync()!;

  // if ladder: 
  /*if (o == '+') {
    print('$a + $b : ${a + b}');
  } if (o == '-') {
    print('$a - $b : ${a - b}');
  } if (o == '*') {
    print('$a * $b : ${a * b}');
  } if (o == '/') {
    print('$a / $b : ${a / b}');
  }*/

  // else if ladder: 
  /*if (o == '+') {
    print('$a + $b : ${a + b}');
  } else if (o == '-') {
    print('$a - $b : ${a - b}');
  } else if (o == '*') {
    print('$a * $b : ${a * b}');
  } else if (o == '/') {
    print('$a / $b : ${a / b}');
  } else {
    print('Invalid opration');
  } */

 // switch case
  switch (o) {
    case '+':
      print('$a + $b : ${a + b}');
      break;
    case '-':
      print('$a - $b : ${a - b}');
      break;
    case '*':
      print('$a * $b : ${a * b}');
      break;
    case '/':
      print('$a / $b : ${a / b}');
      break;
   default:
      print('Invalid opration');
  }
}