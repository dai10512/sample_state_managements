import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sample_state_managements/model/user.dart';

part 'user_client.g.dart';

final userClientProvider = Provider<UserRestClient>((ref) {
  // final dio = ref.watch(dioProvider);
  final dio = Dio();
  final baseUrl = FlavorConfig.instance.values['baseURL'] as String;
  return UserRestClient(
    dio,
    baseUrl: baseUrl,
  );
});

@RestApi()
abstract class UserRestClient {
  factory UserRestClient(Dio dio, {String baseUrl}) = _UserRestClient;

  @GET('/user')
  Future<User> getUser();

  @POST('/tasks')
  Future<List<User>> postUser(
    @Body() User user, {
    @Query('completed') required bool completed,
    @Field('id') String? id,
  });

  @PUT('/tasks/{id}')
  Future<User> updateUser(
    @Header('token') String token,
    @Path() String id,
    @Body() User user,
  );
}
