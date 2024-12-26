//
import 'dart:io';

import 'TestCURDList.dart';

void main() {
  LSTCRUD lst = LSTCRUD();

  while (true) {
    print('\n0 to exit');
    print('1 to add data');
    print('2 to delete data');
    print('3 to update data (Enter to skip)');
    print('4 to display data\n');
    stdout.write('Enter Choice: ');
    int c = int.parse(stdin.readLineSync()!);

    switch (c) {
      case 0:
        exit(1);
      case 1:
        stdout.write('Enter ID: ');
        int id = int.parse(stdin.readLineSync()!);
        stdout.write('Enter Name: ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter Rollno: ');
        int rno = int.parse(stdin.readLineSync()!);
        lst.addData(id, name, rno);
        break;
      case 2:
        stdout.write('Enter ID: ');
        int id = int.parse(stdin.readLineSync()!);
        lst.deleteByID(id);
        break;
      case 3:
        stdout.write('Enter ID: ');
        int id = int.parse(stdin.readLineSync()!);
        stdout.write('Enter new Name: ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter new Rollno: ');
        String rno = stdin.readLineSync()!;
        lst.updateByID(id, name: name, rno: rno);
        break;
      case 4:
        lst.display();
        break;
      default:
        print('Invalid choice');
    }
  }
}
