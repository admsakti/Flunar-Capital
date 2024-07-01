import 'package:get/get.dart';

import './favorite_controller.dart';

class FavoriteBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoriteController>(
      () => FavoriteController(),
    );
  }
}
