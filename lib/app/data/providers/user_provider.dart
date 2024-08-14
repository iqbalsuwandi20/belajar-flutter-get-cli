import 'package:get/get.dart';

import '../models/user_model.dart';

class UserProvider extends GetConnect {
  // @override
  // void onInit() {
  //   httpClient.defaultDecoder = (map) {
  //     if (map is Map<String, dynamic>) return User.fromJson(map);
  //     if (map is List) return map.map((item) => User.fromJson(item)).toList();
  //   };
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  Future<User?> getUser(int id) async {
    final response = await get('https://reqres.in/api/users/$id');
    return User.fromJson(response.body['data']);
  }

  Future<List<User>> getAllUsers() async {
    final Response = await get("https://reqres.in/api/users");
    return User.fromJsonList(Response.body["data"]);
  }

  // Future<Response<User>> postUser(User user) async => await post('user', user);
  // Future<Response> deleteUser(int id) async => await delete('user/$id');
}
