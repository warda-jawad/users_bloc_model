library post_state;

import 'package:built_value/built_value.dart';
import 'package:josnplacholder/model/post_model.dart';

part 'post_state.g.dart';

abstract class PostState implements Built<PostState, PostStateBuilder> {
  String get error;
  bool get isloading;
  PostModel? get postdata;

  PostState._();
  factory PostState([
    updates(PostStateBuilder b),
  ]) = _$PostState;

  factory PostState.initail() {
    return PostState((b) => b
      ..error = ''
      ..isloading = true
      ..postdata = null);
  }
}
