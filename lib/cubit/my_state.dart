part of 'my_cubit.dart';

@immutable
sealed class MyState {}

final class MyInitial extends MyState {}

class GetAllUsers extends MyState {
  final List<User> allUsersList;

  GetAllUsers(this.allUsersList);
}

class GetOneUser extends MyState {
  final User oneUser;

  GetOneUser(this.oneUser);
}

class CreateNewUser extends MyState {
  final User newUser;

  CreateNewUser(this.newUser);
}

class DeleteUser extends MyState {}

class UpdateUser extends MyState {
  final User newUser;

  UpdateUser(this.newUser);
}
