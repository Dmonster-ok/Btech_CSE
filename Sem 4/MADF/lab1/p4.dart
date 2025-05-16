// percentage of 5 sub
import 'dart:io';
void main(){
    stdout.writeln("Enter marks of 5 subjects: ");
    int sum = 0;
    for(int i=0; i<5; i++){
        stdout.write("Subject ${i+1}: ");
        sum += int.parse(stdin.readLineSync()!);
    }
    print("Total marks: ${sum/500*100}%");
}