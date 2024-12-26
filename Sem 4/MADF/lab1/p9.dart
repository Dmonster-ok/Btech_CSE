//perfect no
import 'dart:io';

bool isPerfect(int n){
  int sum = 0;

  for (var i = 1; i < n; i++) {
    if (n % i == 0) {
      sum += i;
    }
  }
  return sum == n;
}
void main() {
  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);

  if (isPerfect(n)) {
    print("$n is a perfect number");
  } else {
    print("$n is not a perfect number");
  }
}
