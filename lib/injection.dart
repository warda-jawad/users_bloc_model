import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:josnplacholder/data/http-helper/http_helper.dart';
import 'package:josnplacholder/data/http-helper/ihttp_helper.dart';
import 'package:josnplacholder/data/repository/irepositry.dart';
import 'package:josnplacholder/data/repository/repository.dart';
import 'package:josnplacholder/screens/posts_screen/bloc/post_bloc.dart';
import 'package:josnplacholder/screens/users_screen/bloc/user_bloc.dart';

GetIt sl = GetIt.instance;

Future initGetIt() async {
  sl.registerLazySingleton(
    () => Dio(
      BaseOptions(
        baseUrl: 'https://jsonplaceholder.typicode.com/',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          "charset": "utf-8",
          "Accept-Charset": "utf-8"
        },
        responseType: ResponseType.plain,
      ),
    ),
  );

  sl.registerLazySingleton(() => HttpHelper(sl()));
  sl.registerLazySingleton<IRepository>(() => Repository(sl()));
  sl.registerFactory(() => UserBloc(sl()));
  sl.registerFactory(() => PostBloc(sl()));
}
