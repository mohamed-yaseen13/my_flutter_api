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

    BlocProvider.of<MyCubit>(context).emitGetOneUser('7767258');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Column(
        children: [
          BlocBuilder<MyCubit, MyState>(
            builder: (context, state) {
              if (state is GetOneUser) {
                user = (state).oneUser;
                return Container(
                  height: 50,
                  color: Colors.amber,
                  child: Center(child: Text(user.name.toString())),
                );
              } else {
                return const Center(child: Text('Unexpected state'));
              }
            },
          ),
        ],
      ),
    );
  }
}
