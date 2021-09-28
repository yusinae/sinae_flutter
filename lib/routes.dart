import 'package:get/route_manager.dart';

import 'pages/cart/index.dart';
import 'pages/home/index.dart';
import 'pages/product/index.dart';
import 'pages/customer/index.dart';

routes() => [
  GetPage(name: "/", page: () => Home()),
  GetPage(name: "/products/:id", page: () => Product()),
  GetPage(name: "/cart", page: () => Cart()), // transition: Transition.zoom()
  GetPage(name: "/customer", page: () => Customer()),
];