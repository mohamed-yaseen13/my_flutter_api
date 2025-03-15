<<<<<<< HEAD
=======
import 'package:my_flutter_api/api_result.dart';
import 'package:my_flutter_api/network_exceptions.dart';
>>>>>>> 15438fb (Restoring repository connection and pushing changes)
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

<<<<<<< HEAD
  Future<User> createNewUser(User newUser) async {
    return await webServices.createNewUser(
      newUser,
      'Bearer 03e5914f4116ddcdd05d5c4eac2ef3856aff1cd3266f2d084c7e1ad465ffce65',
    );
=======
  Future<ApiResult<User>> createNewUser(User newUser) async {
    try {
      var response = await webServices.createNewUser(
        newUser,
        'Bearer 266011b7625eba47bb22d916cc895be80d09523c732855d150f2852347bda0ad',
      );

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
>>>>>>> 15438fb (Restoring repository connection and pushing changes)
  }

  Future<void> deleteUser(int id) async {
    return await webServices.deleteUser(
      id,
      'Bearer 03e5914f4116ddcdd05d5c4eac2ef3856aff1cd3266f2d084c7e1ad465ffce65',
    );
  }

  Future<User> updateUser(int id, User newUser) async {
    return await webServices.updateUser(
      id,
      newUser,
      'Bearer 03e5914f4116ddcdd05d5c4eac2ef3856aff1cd3266f2d084c7e1ad465ffce65',
    );
  }
}
