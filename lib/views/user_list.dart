import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/user_tile.dart';
import 'package:flutter_application_1/data/dummy_users.dart';

class UserList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    const users = DUMMY_USERS;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuários'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), color: Colors.green, onPressed: (){},),
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      )
    );
  }
}