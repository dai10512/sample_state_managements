import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_state_managements/model/item.dart';
import 'package:sample_state_managements/service/item_service.dart';
import 'package:sample_state_managements/service/user_service.dart';

// StateNotifierを使ってグローバルに簡単な変数を管理する例
// 一つの画面だが複数クラスに跨っているので、グローバルに変数を管理する必要がある。
// よく使うのは連打対策用のisWaiting
final _isWaitingProvider = StateProvider<bool>(
  (ref) => false,
);

class ItemScreen extends ConsumerStatefulWidget {
  const ItemScreen({
    super.key,
  });

  @override
  ConsumerState<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends ConsumerState<ItemScreen> {

  @override
  Widget build(BuildContext context) {
    // user情報はグローバルに扱いたいのでNotifierで呼び出している
    final user = ref.watch(userServiceProvider);
    // item情報はAPI通信したり単純な状態ではないので、AsyncNotifierを使っている
    final asyncItem = ref.watch(itemServiceProvider);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('item'),
          actions: [
            Container(
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
            )
          ],
        ),
        body: switch (asyncItem) {
          AsyncData(:final value) => _BuildData(value),
          AsyncError(:final error, :final stackTrace) => _BuildError(error),
          _ => const _BuildLoading(),
        });
  }
}

class _BuildData extends ConsumerWidget {
  const _BuildData(this.items);

  final List<Item> items;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (items.isEmpty) {
      return const Center(
        child: Text('No items'),
      );
    }
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return _BuildItemTile(items[index]);
      },
    );
  }
}

class _BuildItemTile extends ConsumerWidget {
  const _BuildItemTile(this.item);

  final Item item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isWaiting = ref.watch(_isWaitingProvider);
    return ListTile(
      leading: const SizedBox(
        height: 30,
        width: 30,
      ),
      title: Text(item.name),
      onTap: () async {
        if (isWaiting) {
          return;
        }
        ref.read(_isWaitingProvider.notifier).state = true;
        debugPrint('tap item :${item.name}');
        await Future.delayed(const Duration(seconds: 3));
        ref.read(_isWaitingProvider.notifier).state = false;
      },
    );
  }
}

class _BuildError extends StatelessWidget {
  const _BuildError(this.error);
  final Object error;

  @override
  Widget build(BuildContext context) {
    return Text(error.toString());
  }
}

class _BuildLoading extends StatelessWidget {
  const _BuildLoading();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
