// prime not prime using function
import 'dart:io';
void main() {
  stdout.write('Enter a num: ');
  print(checkPrime(int.parse(stdin.readLineSync()!)));
}

int checkPrime(int n){
  for (var i = 2; i < n; i++) {
    if (n % i == 0) {
      return 0;
    }
  }
  return 1;
}