import 'package:flutter_covid/presentation/home/home_page.dart';
import 'package:get/route_manager.dart';

class AppPages {
  const AppPages._();

  static final List<GetPage> routes = [
    GetPage(
      name: HomePage.routeName,
      page: () => const HomePage(),
    ),
  ];
}
