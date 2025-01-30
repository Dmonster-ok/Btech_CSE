// intersecting two sets
import 'dart:io';
void main() {
  List<int> set1 = [];
  List<int> set2 = [];
  
  print('Set 1:');
  while (true) {
    stdout.write('Enter a num (0 to stop): ');
    int num = int.parse(stdin.readLineSync()!);
    if (num == 0) break;
    set1.add(num);
  }
  print('Set 2:');
  while (true) {
    stdout.write('Enter a num (0 to stop): ');
    int num = int.parse(stdin.readLineSync()!);
    if (num == 0) break;
    set2.add(num);
  }
  List<int> intersection = [];
  for (var num in set1) {
    if (set2.contains(num)) {
      intersection.add(num);
    }
  }
  print('Intersection: $intersection');
}