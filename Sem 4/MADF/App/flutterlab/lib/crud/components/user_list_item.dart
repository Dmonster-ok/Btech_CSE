import 'package:flutter/material.dart';
import 'dialogs.dart';

class UserListItem extends StatelessWidget {
  final int index;
  final String name;
  final String lastname;
  final VoidCallback onDelete;
  final Function(String, String) onUpdate;

  const UserListItem({
    super.key,
    required this.index,
    required this.name,
    required this.lastname,
    required this.onDelete,
    required this.onUpdate,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController updateNameController = TextEditingController();
    final TextEditingController updateLastnameController = TextEditingController();

    return ListTile(
      title: Text(name),
      subtitle: Text(lastname),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AppDialog(
                  title: 'Update User',
                  action: 'Update',
                  onPressed: () {
                    onUpdate(
                      updateNameController.text,
                      updateLastnameController.text,
                    );
                  },
                  children: [
                    TextField(
                      controller: updateNameController,
                      decoration: InputDecoration(labelText: 'Name', hintText: name),
                    ),
                    TextField(
                      controller: updateLastnameController,
                      decoration: InputDecoration(labelText: 'Lastname', hintText: lastname),
                    ),
                  ],
                ),
              );
            },
            iconSize: 20,
            color: Colors.deepPurpleAccent,
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: onDelete,
            iconSize: 20,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}