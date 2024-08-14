import 'package:get/get.dart';

import '../../../data/models/user_model.dart';
import '../../../data/providers/user_provider.dart';

class HomeController extends GetxController {
  UserProvider userProvider = UserProvider();

  Future<User?> getSingleUser(int id) async {
    return await userProvider.getUser(id);
  }

  Future<List<User>> getAllUsers() async {
    return await userProvider.getAllUsers();
  }
}
