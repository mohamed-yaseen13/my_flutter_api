import 'package:my_flutter_api/user.dart';
import 'package:my_flutter_api/web_services.dart';

class MyRepo {
  final WebServices webServices;

  MyRepo(this.webServices);

  Future<List<User>> getAllUsers() async {
    var response = await webServices.getAllUsers();

    return response.map((user) => User.fromJson(user.toJson())).toList();
  }

  Future<User> getOneUser(String userId) async {
    var responce = await webServices.getOneUser(userId);

    return User.fromJson(responce.toJson());
  }
}
