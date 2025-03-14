import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_api/cubit/my_cubit.dart';
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

    //BlocProvider.of<MyCubit>(context).emitCreateNewUser(
    //  User(
    //    name: "Omar",
    //    gender: "female",
    //    email: "mohamd@gmail.com",
    //    status: "active",
    //  ),
    //);

    BlocProvider.of<MyCubit>(context).emitDeleteUser(7765933);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Column(
        children: [
          BlocBuilder<MyCubit, MyState>(
            builder: (context, state) {
              if (state is DeleteUser) {
                // user = (state).newUser;
                return Container(
                  height: 50,
                  color: Colors.amber,
                  child: Center(child: Text('User Deleted Successfully')),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
    );
  }
}
