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
