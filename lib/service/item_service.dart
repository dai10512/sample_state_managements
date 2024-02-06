import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_state_managements/model/item.dart';
import 'package:sample_state_managements/service/user_service.dart';

final itemServiceProvider =
    AsyncNotifierProvider<ItemServiceNotifier, List<Item>>(
  ItemServiceNotifier.new,
);

class ItemServiceNotifier extends AsyncNotifier<List<Item>> {
  @override
  FutureOr<List<Item>> build() async {
    return fetch();
  }

  int page = 1;
  get userService => ref.read(userServiceProvider.notifier);

  Future<List<Item>> fetch() async {
    await Future.delayed(const Duration(seconds: 1));
    return List.generate(
      100,
      (index) => Item(
        name: 'Item $index',
      ),
    );
  }
}
