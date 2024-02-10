// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status2.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@Freezed()
class Order with _$Order {
  const factory Order({
    int? id,
    int? petId,
    int? quantity,
    DateTime? shipDate,

    /// Order Status
    Status2? status,
    bool? complete,
  }) = _Order;
  
  factory Order.fromJson(Map<String, Object?> json) => _$OrderFromJson(json);
}
