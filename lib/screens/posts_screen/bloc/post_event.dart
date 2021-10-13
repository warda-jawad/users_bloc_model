library post_event;

import 'package:built_value/built_value.dart';
part 'post_event.g.dart';

abstract class PostEvent {}

abstract class ClearError extends PostEvent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();
  factory ClearError([
    updates(ClearErrorBuilder b),
  ]) = _$ClearError;
}

abstract class PostData extends PostEvent
    implements Built<PostData, PostDataBuilder> {
  PostData._();

  factory PostData([
    updates(PostDataBuilder b),
  ]) = _$PostData;
}
