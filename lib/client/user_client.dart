import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sample_state_managements/model/user.dart';

part 'user_client.g.dart';

final userClientProvider = Provider<UserRestClient>((ref) {
  final dio = Dio();
  return UserRestClient(dio);
});

@RestApi(baseUrl: 'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/')
abstract class UserRestClient {
  factory UserRestClient(Dio dio, {String baseUrl}) = _UserRestClient;

  @GET('/user')
  Future<User> getUser();

  @POST('/tasks')
  Future<List<User>> postUser(
    @Body() User user,
  );

  @PUT('/tasks/{id}')
  Future<User> updateUser(
    @Path() String id,
    @Body() User user,
  );
}