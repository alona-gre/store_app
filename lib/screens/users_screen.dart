import 'package:flutter/material.dart';
import 'package:store_app/widgets/user_tile_widget.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Users")),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (ctx, index) {
              return const UserTile();
            }));
  }
}
