//Find prime from start to stop
import 'dart:io';

void main() {
  stdout.write("Enter Start: ");
  int s = int.parse(stdin.readLineSync()!);
  stdout.write("Enter End: ");
  int e = int.parse(stdin.readLineSync()!);

  rangePrime(s, e);
}

void rangePrime(int s, int e) {
  for (int i = s; i <= e; i++) {
    bool f = true;
    if (i == 1) continue;
    for (int j = 2; j < i; j++) {
      if (i % j == 0) {
        f = false;
        break;
      }
    }
    if (f) print(i);
    
  }
}
