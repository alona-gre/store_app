import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store_app/services/users_repository.dart';
import 'package:store_app/widgets/user_tile_widget.dart';

class UsersScreen extends ConsumerWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.read(usersRepositoryProvider).getUsers();
    return Scaffold(
      appBar: AppBar(title: const Text("Users")),
      body: FutureBuilder(
          future: users,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(
                child: Text('An error occurred: ${snapshot.error}'),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('No data'),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (ctx, index) {
                return UserTile(
                  user: snapshot.data![index],
                );
              },
            );
          }),
    );
  }
}
