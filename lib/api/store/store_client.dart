// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/order.dart';

part 'store_client.g.dart';

@RestApi()
abstract class StoreClient {
  factory StoreClient(Dio dio, {String? baseUrl}) = _StoreClient;

  /// Place an order for a pet.
  /// 
  /// [body] - order placed for purchasing the pet.
  @POST('/store/order')
  Future<Order> placeOrder({
    @Body() required Order body,
  });

  /// Find purchase order by ID.
  /// 
  /// For valid response try integer IDs with value >= 1 and <= 10. Other values will generated exceptions.
  /// 
  /// [orderId] - ID of pet that needs to be fetched.
  @GET('/store/order/{orderId}')
  Future<Order> getOrderById({
    @Path('orderId') required int orderId,
  });

  /// Delete purchase order by ID.
  /// 
  /// For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors.
  /// 
  /// [orderId] - ID of the order that needs to be deleted.
  @DELETE('/store/order/{orderId}')
  Future<void> deleteOrder({
    @Path('orderId') required int orderId,
  });

  /// Returns pet inventories by status.
  /// 
  /// Returns a map of status codes to quantities.
  @GET('/store/inventory')
  Future<Object> getInventory();
}
