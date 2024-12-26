// Find Friends using map
import 'dart:io';

class Friends {
  List<Map<String, dynamic>> friends = [
    {'name': 'John', 'phone': 123},
    {'name': 'Jane', 'phone': 456},
    {'name': 'Alice', 'phone': 789},
    {'name': 'Bob', 'phone': 101},
    {'name': 'Charlie', 'phone': 112},
    {'name': 'David', 'phone': 131}
  ];
  void getDetails() {
    friends.forEach((e) {
      print('${e['name']} ${e['phone']}');
    });
    print('');
  }

  void sreachFriends(String key) {
    for (var e in friends) {
      if (e['name'].toString().toLowerCase() == key.toLowerCase()) {
        print('\n${e['name']} ${e['phone']}');
        return;
      }
    }
    print('Not Found');
  }
}

void main() {
  Friends f = Friends();
  f.getDetails();

  stdout.write('Search Friend: ');
  f.sreachFriends(stdin.readLineSync()!);
}
