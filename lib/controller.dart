import 'package:get/state_manager.dart';
import 'package:sinae_flutter/models/cart_item.model.dart';

class AppController extends GetxController{

  RxList<CartItemModel> cartItems = RxList<CartItemModel>([]);

}