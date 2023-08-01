import 'package:dio/dio.dart';
import 'package:flutter_application_1/user.dart';

class UserService {
  static Future<List<UserInfo>> getUser() async {
    final dio = Dio();
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/albums');
    if (response.statusCode == 200) {
      final List<UserInfo> users = [];
      for (var item in response.data) {
        users.add(UserInfo.fromJson(item));
      }
      return users;
    }else{
      throw Exception('Failed to load album');
    }
  }
}
