// meters to inches

import 'dart:io';
void main(){
    stdout.write("Enter meters: ");
    double meters = double.parse(stdin.readLineSync()!);

    print("In inches: ${meters*39.3701}");
}