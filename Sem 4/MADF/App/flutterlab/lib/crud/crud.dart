import 'package:flutter/material.dart';
import 'components/user_list_item.dart';
import 'components/dialogs.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String searchQuery = '';
  final TextEditingController searchData = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final List<Map<String, String>> users = [
    {'name': 'John', 'lastname': 'Doe'},
    {'name': 'Jane', 'lastname': 'Doe'},
    {'name': 'Alice', 'lastname': 'Smith'},
    {'name': 'Bob', 'lastname': 'Brown'},
    {'name': 'Charlie', 'lastname': 'Green'},
    {'name': 'David', 'lastname': 'White'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRUD'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.green,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AppDialog(
                  title: 'Add User',
                  action: 'Save',
                  onPressed: () {
                    setState(() {
                      users.add({
                        'name': nameController.text,
                        'lastname': lastnameController.text,
                      });
                      nameController.clear();
                      lastnameController.clear();
                    });
                  },
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(labelText: 'Name'),
                    ),
                    TextField(
                      controller: lastnameController,
                      decoration: const InputDecoration(labelText: 'Lastname'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchData,
              decoration: const InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filter(users: users, searchQuery: searchQuery).length,
        itemBuilder: (context, index) {
          final filteredUsers =
              filter(users: users, searchQuery: searchQuery).toList();
          return UserListItem(
            index: index,
            name: filteredUsers[index]['name']!,
            lastname: filteredUsers[index]['lastname']!,
            onDelete: () {
              setState(() {
                users.remove(filteredUsers[index]);
              });
            },
            onUpdate: (updatedName, updatedLastname) {
              setState(() {
                final userIndex = users.indexOf(filteredUsers[index]);
                users[userIndex] = {
                  'name': updatedName,
                  'lastname': updatedLastname,
                };
              });
            },
          );
        },
      ),
    );
  }
}

dynamic filter({required users, required String searchQuery}) {
  return users.where((user) {
    final name = user['name']!.toLowerCase();
    final lastname = user['lastname']!.toLowerCase();
    final query = searchQuery.toLowerCase();
    return name.contains(query) || lastname.contains(query);
  });
}
