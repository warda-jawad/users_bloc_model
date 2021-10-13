import 'package:josnplacholder/model/post_model.dart';
import 'package:josnplacholder/model/user_model.dart';

abstract class IHttpHelper {
  Future<UserModel> getUsers();

  Future<PostModel> getposts();
}
