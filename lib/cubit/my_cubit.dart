import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
<<<<<<< HEAD
import 'package:my_flutter_api/my_repo.dart';
import 'package:my_flutter_api/user.dart';

part 'my_state.dart';

class MyCubit extends Cubit<MyState> {
  final MyRepo myRepo;

  MyCubit(this.myRepo) : super(MyInitial());

  void emitGetAllUsers() {
    myRepo.getAllUsers().then((usersList) {
      emit(GetAllUsers(usersList));
    });
  }

  void emitGetOneUser(int userId) {
    myRepo.getOneUser(userId).then((oneUser) {
      emit(GetOneUser(oneUser));
    });
  }

  void emitCreateNewUser(User newUser) {
    myRepo.createNewUser(newUser).then((newUser) {
      emit(CreateNewUser(newUser));
    });
  }

  void emitDeleteUser(int id) {
    myRepo.deleteUser(id).then((_) => emit(DeleteUser()));
  }

  void emitUpdateUser(int id, User newUser) {
    myRepo.updateUser(id, newUser).then((newUser) {
      emit(UpdateUser(newUser));
    });
  }
=======
import 'package:my_flutter_api/api_result.dart' as api_result;
import 'package:my_flutter_api/cubit/my_state.dart';
import 'package:my_flutter_api/my_repo.dart';
import 'package:my_flutter_api/network_exceptions.dart';
import 'package:my_flutter_api/user.dart';

class MyCubit extends Cubit<MyState<User>> {
  final MyRepo myRepo;

  MyCubit(this.myRepo) : super(const Idle());

  //void emitGetAllUsers() {
  //  myRepo.getAllUsers().then((usersList) {
  //    emit(GetAllUsers(usersList));
  //  });
  //}

  //void emitGetOneUser(int userId) {
  //  myRepo.getOneUser(userId).then((oneUser) {
  //    emit(GetOneUser(oneUser));
  //  });
  //}

  void emitCreateNewUser(User newUser) async {
    var result = await myRepo.createNewUser(newUser);

    if (result is api_result.Success) {
      emit(MyState.success((result as api_result.Success).data));
    } else if (result is api_result.Failure) {
      emit(MyState.error((result as api_result.Failure).networkExceptions));
    }
  }

  //void emitDeleteUser(int id) {
  //  myRepo.deleteUser(id).then((_) => emit(DeleteUser()));
  //}

  //void emitUpdateUser(int id, User newUser) {
  //  myRepo.updateUser(id, newUser).then((newUser) {
  //    emit(UpdateUser(newUser));
  //  });
  //}
>>>>>>> 15438fb (Restoring repository connection and pushing changes)
}
