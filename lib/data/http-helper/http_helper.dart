import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:josnplacholder/model/post_model.dart';

import 'package:josnplacholder/model/user_model.dart';

import 'ihttp_helper.dart';

class HttpHelper extends IHttpHelper {
  final Dio _dio;

  HttpHelper(this._dio) {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        // responseBody: true,
        requestBody: true,
      ),
    );
  }

  @override
  Future<UserModel> getUsers() async {
    try {
      final response = await _dio.get(
        'https://jsonplaceholder.typicode.com/users',
      );
      if (response.statusCode == 200) {
        var jsonDataObject = jsonDecode(response.data);
        UserModel usermodel = UserModel.fromJson(jsonDataObject[1]);
        return usermodel;
      } else {
        throw Exception();
      }
    } catch (e) {
      print(e);
      throw Exception();
    }
  }

  @override
  Future<PostModel> getposts() async {
    try {
      final response = await _dio.get(
        'https://jsonplaceholder.typicode.com/users',
      );
      if (response.statusCode == 200) {
        var jsonDataObject = jsonDecode(response.data);
        PostModel postmodel = PostModel.fromJson(jsonDataObject[1]);
        return postmodel;
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception();
    }
  }
}
