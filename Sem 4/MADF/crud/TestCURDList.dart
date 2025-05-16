class LSTCRUD {
  List<Map<String, dynamic>> data = [];

  LSTCRUD() {
    print('List initalized\n');
  }

  void addData(int id, String name, int rno) {
    data.add({'id': id, 'name': name, 'rno': rno});
  }

  void updateByID(int id, {String? name, String? rno}) {
     
     bool flag = true;
    
    data.forEach((el) {
      if (el['id'] != id) {
        flag = false;
      } else {
        name == null || name == '' ? null : el['name'] = name;
        name == null || name == '' ? null : el['rno'] = rno;
      }
      print(flag ? 'Data updated': 'Index not found');
    });
  }

  void deleteByID(int id) {
    data.removeWhere((el) => el['id'] == id);
  }

  void display() {
    print('\nData:');
    data.forEach((el) {
      print('ID: ${el['id']}, Name: ${el['name']}, Roll: ${el['rno']}');
    });
  }
}
