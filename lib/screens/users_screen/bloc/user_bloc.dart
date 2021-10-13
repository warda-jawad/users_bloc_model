import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:josnplacholder/data/repository/irepositry.dart';
import 'package:josnplacholder/screens/users_screen/bloc/user_event.dart';
import 'package:josnplacholder/screens/users_screen/bloc/user_state.dart';

class UserBloc extends Bloc<UserEvent, UsersState> {
  IRepository _iRepository;

  UserBloc(this._iRepository) : super(UsersState.initail());

  @override
  Stream<UsersState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = '');
    }
    if (event is UserData) {
      try {
        yield state.rebuild((b) => b
          ..error = ''
          ..loading = true
          ..userData = null);
        final user_data = await _iRepository.getUsers();
        yield state.rebuild((b) => b
          ..error = ''
          ..loading = false
          ..userData = user_data);
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'cannot get data'
          ..loading = false
          ..userData = null);
      }
    }
  }
}
