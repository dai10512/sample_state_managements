import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_state_managements/client/user_client.dart';
import 'package:sample_state_managements/model/user.dart';

final userServiceProvider =
    NotifierProvider<UserService, User?>(UserService.new);

class UserService extends Notifier<User?> {
  @override
  User? build() {
    return null;
  }

  Future<void> login() async {
    state = const User(
      name: 'Taro',
      age: 20,
      // 無料画像サイトpixabayから拝借
      image:
          'https://cdn.pixabay.com/photo/2024/01/07/11/17/welsh-corgi-8492879_1280.jpg',
    );
  }

  //////////////////////////////////////
  // retrofit用
  // responseクラスは割愛しているので注意
  //////////////////////////////////////

  Future<User> getUser() async {
    final user = ref.read(userClientProvider).getUser();
    return user;
  }

  Future<void> updateUser(
    String id,
    String name,
    int age,
    String image,
  ) async {
    await ref.read(userClientProvider).updateUser(
          '',
          id,
          User(
            name: name,
            age: age,
            image: image,
          ),
        );
  }
}
