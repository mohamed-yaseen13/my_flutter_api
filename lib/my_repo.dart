import 'package:my_flutter_api/user.dart';
import 'package:my_flutter_api/web_services.dart';

class MyRepo {
  final WebServices webServices;

  MyRepo(this.webServices);

  Future<List<User>> getAllUsers() async {
    return await webServices.getAllUsers();
  }

  Future<User> getOneUser(int userId) async {
    return await webServices.getOneUser(userId);
  }

  Future<User> createNewUser(User newUser) async {
    return await webServices.createNewUser(
      newUser,
      'Bearer 03e5914f4116ddcdd05d5c4eac2ef3856aff1cd3266f2d084c7e1ad465ffce65',
    );
  }

  Future<void> deleteUser(int id) async {
    return await webServices.deleteUser(
      id,
      'Bearer 03e5914f4116ddcdd05d5c4eac2ef3856aff1cd3266f2d084c7e1ad465ffce65',
    );
  }
}
