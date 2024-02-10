// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/user.dart';

part 'user_client.g.dart';

@RestApi()
abstract class UserClient {
  factory UserClient(Dio dio, {String? baseUrl}) = _UserClient;

  /// Creates list of users with given input array.
  /// 
  /// [body] - List of user object.
  @POST('/user/createWithArray')
  Future<void> createUsersWithArrayInput({
    @Body() required List<User> body,
  });

  /// Creates list of users with given input array.
  /// 
  /// [body] - List of user object.
  @POST('/user/createWithList')
  Future<void> createUsersWithListInput({
    @Body() required List<User> body,
  });

  /// Get user by user name.
  /// 
  /// [username] - The name that needs to be fetched. Use user1 for testing.
  @GET('/user/{username}')
  Future<User> getUserByName({
    @Path('username') required String username,
  });

  /// Updated user.
  /// 
  /// This can only be done by the logged in user.
  /// 
  /// [username] - name that need to be updated.
  /// 
  /// [body] - Updated user object.
  @PUT('/user/{username}')
  Future<void> updateUser({
    @Path('username') required String username,
    @Body() required User body,
  });

  /// Delete user.
  /// 
  /// This can only be done by the logged in user.
  /// 
  /// [username] - The name that needs to be deleted.
  @DELETE('/user/{username}')
  Future<void> deleteUser({
    @Path('username') required String username,
  });

  /// Logs user into the system.
  /// 
  /// [username] - The user name for login.
  /// 
  /// [password] - The password for login in clear text.
  @GET('/user/login')
  Future<String> loginUser({
    @Query('username') required String username,
    @Query('password') required String password,
  });

  /// Logs out current logged in user session
  @GET('/user/logout')
  Future<void> logoutUser();

  /// Create user.
  /// 
  /// This can only be done by the logged in user.
  /// 
  /// [body] - Created user object.
  @POST('/user')
  Future<void> createUser({
    @Body() required User body,
  });
}
