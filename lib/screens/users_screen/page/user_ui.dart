import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:josnplacholder/screens/users_screen/bloc/user_bloc.dart';
import 'package:josnplacholder/screens/users_screen/bloc/user_event.dart';
import 'package:josnplacholder/screens/users_screen/bloc/user_state.dart';
import 'package:josnplacholder/screens/users_screen/widget/message_tab.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import '../../../../injection.dart';

class UserUi extends StatefulWidget {
  const UserUi({Key? key}) : super(key: key);

  @override
  _UserUiState createState() => _UserUiState();
}

class _UserUiState extends State<UserUi> {
  final _bloc = sl<UserBloc>();
  int scrno = 1;

  @override
  void initState() {
    super.initState();
    _bloc.add(UserData());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, UsersState state) {
          return Scaffold(
            body: SafeArea(
              child: Container(
                width: 500,
                height: 900,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: ListView.builder(
                      itemCount: state.userData.hashCode,
                      itemBuilder: (BuildContext context, int index) {
                        return MessageTab(
                          id: (state.userData == null ||
                                  state.userData!.id == null)
                              ? 1
                              : state.userData!.id,
                          name: (state.userData == null ||
                                  state.userData!.name == null)
                              ? "doe"
                              : state.userData!.name,
                          username: (state.userData == null ||
                                  state.userData!.username == null)
                              ? "doeusername"
                              : state.userData!.username,
                          imageURL: "assest/pic.jpg",
                        );
                      }),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
