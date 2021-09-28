import 'package:get/route_manager.dart';

import 'pages/cart/index.dart';
import 'pages/productlist/index.dart';
import 'pages/product/index.dart';

routes() => [
  GetPage(name: "/", page: () => Home()),
  GetPage(name: "/products/:id", page: () => Product()),
  GetPage(name: "/cart", page: () => Cart()), //, transition: Transition.zoom()
];