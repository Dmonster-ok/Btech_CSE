// find last word and print it's lenngth
import 'dart:io';
void main() {
  stdout.write('Enter a string: ');
  String str = stdin.readLineSync()!;

  List strl = str.split(' ');
  stdout.write(strl[strl.length - 1].toString().length);
  print(" (LastWord: ${strl[strl.length - 1]})");
}