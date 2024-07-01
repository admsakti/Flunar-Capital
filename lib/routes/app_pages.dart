import 'package:get/get.dart';

import './app_routes.dart';

import '../pages/home/home_view.dart';
import '../pages/home/home_binding.dart';

import '../pages/favorite/favorite_view.dart';
import '../pages/favorite/favorite_binding.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.favorites,
      page: () => const FavoriteView(),
      binding: FavoriteBinding(),
    ),
  ];
}
