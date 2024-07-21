import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store_app/models/user.dart';
import 'package:store_app/services/api_service.dart';

class UsersRepository {
  Future<List<User>> getUsers() async {
    final userList = await APIService.getAllUsers();
    return userList;
  }
}

final usersRepositoryProvider = Provider<UsersRepository>((ref) {
  return UsersRepository();
});

final getUsersProvider = FutureProvider<List<User>>((ref) {
  return ref.read(usersRepositoryProvider).getUsers();
});
