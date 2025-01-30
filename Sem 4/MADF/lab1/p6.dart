//calculate bmi 
import 'dart:io';

void main(){
    stdout.write("Enter weight in kg: ");
    double weight = double.parse(stdin.readLineSync()!);
    stdout.write("Enter height in cm: ");
    double height = (int.parse(stdin.readLineSync()!)*0.01);

    print("BMI: ${(weight/(height*height)).toStringAsFixed(2)}");

}