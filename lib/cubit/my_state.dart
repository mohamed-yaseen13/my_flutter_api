<<<<<<< HEAD
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
=======
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_api/network_exceptions.dart';

part 'my_state.freezed.dart';

@freezed
class MyState<T> with _$MyState<T> {
  const factory MyState.idle() = Idle<T>;

  const factory MyState.loading() = Loading<T>;

  const factory MyState.success(T data) = Success<T>;

  const factory MyState.error(NetworkExceptions networkExceptions) = Error<T>;
>>>>>>> 15438fb (Restoring repository connection and pushing changes)
}
