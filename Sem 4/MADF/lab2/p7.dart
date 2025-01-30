//
import 'dart:io';

void main() {
  stdout.write('Enter hours: ');
  num h = int.parse(stdin.readLineSync()!);
  stdout.write('Enter mins: ');
  num m = int.parse(stdin.readLineSync()!);

  num hours = h*30 + (m/6*3);
  num minits = m*6;

  num ans = (hours-minits).abs();

  if(ans > 180){
    ans = 360 - ans;
  }

  print(ans);

  // if (h <= 12 && h > 0 && m <= 60 && m >= 0) {
    
  //   print();
  // } else {
  //   print('Invalid input');
  // }
}
