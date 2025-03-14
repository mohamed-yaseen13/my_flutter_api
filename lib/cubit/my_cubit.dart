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
}
