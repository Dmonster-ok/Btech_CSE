// Phone book dictionary
import 'dart:io';
void main() {
  Map<String,int> phonebook = {};

  while (true){
    stdout.write("Enter name(q to stop): ");
    String name = stdin.readLineSync()!;
    if (name.toLowerCase() == 'q') {
      phonebook = Map.fromEntries(phonebook.entries.toList()..sort((a, b) => a.key.compareTo(b.key)));
      print(phonebook);
      break;
    };
    stdout.write("Enter phone number: ");
    int phone = int.parse(stdin.readLineSync()!);
    phonebook[name] = phone;
  }

}