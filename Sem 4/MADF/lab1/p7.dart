// check ugly num
import 'dart:io';

bool isUgly(int n) {
  if (n <= 0) {
    return false;
  }
  while (n % 2 == 0) {
    n ~/= 2;
  }
  while (n % 3 == 0) {
    n ~/= 3;
  }
  while (n % 5 == 0) {
    n ~/= 5;
  }
  return n == 1;
}

void main() {
  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);
  // for (int i = 1; i <= n; i++) {
  //   if (isUgly(i)) {
  //     stdout.write("$i ");
  //   }
  // }
  if (isUgly(n)) {
    print("$n is an ugly number");
  } else {
    print("$n is not an ugly number");
  }
}
