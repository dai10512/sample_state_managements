// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';

import 'pet/pet_client.dart';
import 'store/store_client.dart';
import 'user/user_client.dart';

/// Swagger Petstore `v1.0.6`.
/// 
/// This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.
class RestClient {
  RestClient(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  PetClient? _pet;
  StoreClient? _store;
  UserClient? _user;

  PetClient get pet => _pet ??= PetClient(_dio, baseUrl: _baseUrl);

  StoreClient get store => _store ??= StoreClient(_dio, baseUrl: _baseUrl);

  UserClient get user => _user ??= UserClient(_dio, baseUrl: _baseUrl);
}
