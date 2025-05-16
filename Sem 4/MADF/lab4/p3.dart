// Fibonacci up to n
import 'dart:io';

void main() {
  stdout.write('Enter end: ');
  int n = int.parse(stdin.readLineSync()!);
  // int n = 696969;
  // Stopwatch stopwatch = Stopwatch()..start();
  
  febbo(n);

  // stopwatch.stop();
  // print(stopwatch.elapsedMilliseconds);
}

void febbo(int n,[int a = 0, int b = 1]) {
  int c = 0;
  // stdout.write('$a $b ');
  for (var i = 0; i < n - 2; i++) {
    c = a + b;
    // stdout.write('$c ');
    a = b;
    b = c;
  }
}


// void febbo(int n, [int a = 0, int b = 1]) {
//   if (n > 0) {
//     stdout.write('$a ');
//     febbo(n - 1, b, a + b);
//   }
// }