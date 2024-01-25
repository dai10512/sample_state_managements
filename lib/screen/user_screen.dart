import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_state_managements/service/user_service.dart';

// 一般的なUMIに合わせたUser画面
// 単に状態を表示しているだけなので、StatefulWidgetで十分
class UserScreen extends ConsumerWidget {
  const UserScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userServiceProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('user'),
        actions: [
          GestureDetector(
            child: Container(
              height: 30,
              width: 30,
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primary,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    user?.image ?? '',
                  ),
                  onError: (exception, stackTrace) {},
                ),
              ),
            ),
            onTap: () {
              ref.read(userServiceProvider.notifier).login();
            },
          ),
        ],
      ),
      body: user == null
          ? const Center(child: Text('未ログイン状態'))
          : Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 画像
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          user.image ?? '',
                        ),
                        onError: (exception, stackTrace) {},
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        user.name ?? '',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        user.age.toString() ?? '',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
