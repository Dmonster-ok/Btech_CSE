// sort 5 numbers
import 'dart:io';

void main() {
  List<int> nums = [];
  for (var i = 0; i < 5; i++) {
    stdout.write('Enter num ${i + 1}: ');
    nums.add(int.parse(stdin.readLineSync()!));
  }
  nums.sort((a, b) => a - b);
  print('Sorted: $nums');
}
