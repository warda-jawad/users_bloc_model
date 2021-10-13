library user_event;

import 'package:built_value/built_value.dart';

part 'user_event.g.dart';

abstract class UserEvent {}

abstract class ClearError extends UserEvent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();

  factory ClearError([
    updates(ClearErrorBuilder b),
  ]) = _$ClearError;
}

abstract class UserData extends UserEvent
    implements Built<UserData, UserDataBuilder> {
  UserData._();

  factory UserData([
    updates(UserDataBuilder b),
  ]) = _$UserData;
}
