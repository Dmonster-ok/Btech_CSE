// sort on heights
import 'dart:io';

void main() {
  List<int> nums = [];

  while (true) {
    stdout.write('Enter a num (0 to quite): ');
    int n = int.parse(stdin.readLineSync()!);
    if (n == 0) {
      count(nums);
      exit(1);
    }
    nums.add(n);
  }
}

void count(List<int> nums) {
  int ec = 0;
  int oc = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] % 2 == 0) {
      ec++;
    } else {
      oc++;
    }
  }
  print('Even count: $ec');
  print('Odd count: $oc');
}
