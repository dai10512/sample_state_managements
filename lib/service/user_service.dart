import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_state_managements/model/user_model.dart';

final userServiceProvider =
    NotifierProvider<UserService, User?>(UserService.new);

class UserService extends Notifier<User?> {
  @override
  User? build() {
    return null;
  }

  Future<void> login() async {
    await Future.delayed(const Duration(seconds: 1));
    state = const User(
      name: 'Taro',
      age: 20,
      image: 'assets/images/avatar.png',
    );
  }
}
