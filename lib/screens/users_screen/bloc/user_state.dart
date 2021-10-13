library user_state;

import 'package:built_value/built_value.dart';
import 'package:josnplacholder/model/user_model.dart';

part 'user_state.g.dart';

abstract class UsersState implements Built<UsersState, UsersStateBuilder> {
  String get error;
  bool get loading;
  UserModel? get userData;

  UsersState._();
  factory UsersState([
    updates(UsersStateBuilder b),
  ]) = _$UsersState;

  factory UsersState.initail() {
    return UsersState((b) => b
      ..error = ''
      ..loading = false
      ..userData = null);
  }
}
