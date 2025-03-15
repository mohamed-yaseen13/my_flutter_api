import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_api/cubit/my_cubit.dart';
<<<<<<< HEAD
=======
import 'package:my_flutter_api/cubit/my_state.dart';
import 'package:my_flutter_api/network_exceptions.dart';
>>>>>>> 15438fb (Restoring repository connection and pushing changes)
import 'package:my_flutter_api/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> usersList = [];

  User user = User();

  @override
  void initState() {
    super.initState();

    //BlocProvider.of<MyCubit>(context).emitGetAllUsers();

    //BlocProvider.of<MyCubit>(context).emitGetOneUser(7765937);

<<<<<<< HEAD
    //BlocProvider.of<MyCubit>(context).emitCreateNewUser(
    //  User(
    //    name: "Omar",
    //    gender: "female",
    //    email: "mohamd@gmail.com",
    //    status: "active",
    //  ),
    //);

    //BlocProvider.of<MyCubit>(context).emitDeleteUser(7765933);

    BlocProvider.of<MyCubit>(context).emitUpdateUser(
      7770906,
      User(
        name: "Mohamed",
        email: "ali@gmail.com",
        status: "active",
        gender: "male",
      ),
    );
=======
    BlocProvider.of<MyCubit>(context).emitCreateNewUser(
      User(
        name: "Omar",
        gender: "female",
        email: "yaseen_ali@gmail.com",
        status: "active",
      ),
    );

    //BlocProvider.of<MyCubit>(context).emitDeleteUser(7765933);

    //BlocProvider.of<MyCubit>(context).emitUpdateUser(
    //  7770906,
    //  User(
    //    name: "Mohamed",
    //    email: "ai@gmail.com",
    //    status: "active",
    //    gender: "male",
    //  ),
    //);
>>>>>>> 15438fb (Restoring repository connection and pushing changes)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Column(
        children: [
<<<<<<< HEAD
          BlocBuilder<MyCubit, MyState>(
            builder: (context, state) {
              if (state is UpdateUser) {
                user = (state).newUser;
                return Container(
                  height: 50,
                  color: Colors.amber,
                  child: Center(child: Text(user.name.toString())),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
=======
          BlocBuilder<MyCubit, MyState<User>>(
            builder: (context, state) {
              if (state is Idle) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is Loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is Success) {
                final User userData = (state as Success).data;
                return Container(
                  height: 50,
                  color: Colors.amber,
                  child: Center(child: Text(userData.email.toString())),
                );
              } else if (state is Error) {
                final NetworkExceptions error =
                    (state as Error).networkExceptions;
                return Center(
                  child: Text(NetworkExceptions.getErrorMessage(error)),
                );
              }
              return const SizedBox();
>>>>>>> 15438fb (Restoring repository connection and pushing changes)
            },
          ),
        ],
      ),
    );
  }
}
