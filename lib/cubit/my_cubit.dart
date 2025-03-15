import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
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
}
