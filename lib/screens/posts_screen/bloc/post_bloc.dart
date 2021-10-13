import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:josnplacholder/data/repository/irepositry.dart';
import 'package:josnplacholder/screens/posts_screen/bloc/post_event.dart';
import 'package:josnplacholder/screens/posts_screen/bloc/post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  IRepository _iRepository;

  PostBloc(this._iRepository) : super(PostState.initail());

  Stream<PostState> mapEentToState(PostEvent event) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = '');
    }
    if (event is PostData) {
      try {
        yield state.rebuild((b) => b
          ..error = ''
          ..isloading = true
          ..postdata = null);
        final post_data = await _iRepository.getposts();
        yield state.rebuild((b) => b
          ..error = ''
          ..isloading = false
          ..postdata = post_data);
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = " cannot get data"
          ..isloading = false
          ..postdata = null);
      }
    }
  }
}
