// fahrenheit to celcius
import 'dart:io';
void main(){
  stdout.write("Enter a Temp in fahrenheit: ");
  var fe = double.parse(stdin.readLineSync()!);
  var ce = ((fe - 32) * 5/9).toStringAsFixed(2);
  print("Temp in celsius: $ce");
}