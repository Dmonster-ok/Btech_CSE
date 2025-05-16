//armstrong number
import 'dart:io';
import 'dart:math';

void main(){
    stdout.write("Enter a num: ");
    String num = stdin.readLineSync()!;
    List nums = num.split('').map((e) => int.parse(e)).toList();
    int exp = nums.length;
    int sum = 0;

    nums.forEach((n){
        sum += pow(n, exp).toInt();
    });

    if(sum == int.parse(num)){
        print("$num is an armstrong number");
    } else {
        print("$num is not an armstrong number");
    }
}