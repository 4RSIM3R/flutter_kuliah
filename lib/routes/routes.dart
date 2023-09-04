import 'package:flutter/material.dart';
import 'package:kuliah/models/cart_model.dart';
import 'package:kuliah/pages/cart/detail/cart_detail_page.dart';
import 'package:kuliah/pages/cart/main/cart_main_page.dart';

class Routes {
  static const index = '/';
  static const detail = '/detail';
  static const create = '/create';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case index:
        return MaterialPageRoute(builder: (_) => const CartMainPage());
      case detail:
        var data = settings.arguments as CartModel;
        return MaterialPageRoute(builder: (_) => CartDetailPage(model: data));
      case create:
        return MaterialPageRoute(builder: (_) => const CartMainPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(toolbarHeight: 0, elevation: 0),
            body: const Center(
              child: Text("404 Not Found"),
            ),
          ),
        );
    }
  }
}
