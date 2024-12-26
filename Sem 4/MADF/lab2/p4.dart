// print class using 5 subjects
import 'dart:io';

String getClass(num per) {
  String val = '';

  if (per < 35) {
    val = 'Fail';
  } else if (per < 45) {
    val = 'Pass';
  } else if (per < 60) {
    val = 'Second Class';
  } else if (per < 70) {
    val = 'First Class';
  } else {
    val = 'Distinction';
  }

  return val;
}

void main() {
  Map<String, num> subs = {};

  stdout.write('Total Marks per subject: ');
  num t = num.parse(stdin.readLineSync()!);
  while (true) {
    stdout.write('Enter subject (q to quit, c to calculate) ');
    String s = stdin.readLineSync()!;

    if (s.toLowerCase() == 'q') exit(1);
    if (s.toLowerCase() == 'c') {
      num sum = 0;
      subs.forEach((k, val) {
        sum += val;
      });
      print(getClass(sum / (t * subs.length) * 100));
      exit(1);
    }

    stdout.write('Enter Marks: ');
    subs[s] = num.parse(stdin.readLineSync()!);
  }
}
