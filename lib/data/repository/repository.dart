import 'package:josnplacholder/data/http-helper/http_helper.dart';
import 'package:josnplacholder/data/repository/irepositry.dart';
import 'package:josnplacholder/model/post_model.dart';
import 'package:josnplacholder/model/user_model.dart';

class Repository extends IRepository {
  HttpHelper _iHttpHelper;
  Repository(
    this._iHttpHelper,
  );
  @override
  Future<UserModel> getUsers() async {
    final usermodel = await _iHttpHelper.getUsers();
    return usermodel;
  }

  @override
  Future<PostModel> getposts() async {
    final postmodel = await _iHttpHelper.getposts();
    print('9999999999999999999999999');
    return postmodel;
  }
}
