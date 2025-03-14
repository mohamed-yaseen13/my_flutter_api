import 'package:dio/dio.dart';
import 'package:my_flutter_api/user.dart';
import 'package:retrofit/retrofit.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: 'https://gorest.co.in/public/v2/')
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET('users')
  Future<List<User>> getAllUsers();

  @GET('users/{id}')
  Future<User> getOneUser(@Path('id') String id);
}
