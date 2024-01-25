import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_state_managements/model/item.dart';

final itemServiceProvider =
    AsyncNotifierProvider<ItemServiceNotifier, List<Item>>(
  ItemServiceNotifier.new,
);

class ItemServiceNotifier extends AsyncNotifier<List<Item>> {
  @override
  FutureOr<List<Item>> build() async {
    return fetch();
  }

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
