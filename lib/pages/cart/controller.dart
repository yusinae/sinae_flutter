import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:sinae_flutter/utils/colors.dart';
import 'package:sinae_flutter/controller.dart';
import 'package:sinae_flutter/models/cart_item.model.dart';

class CartController extends GetxController {
  AppController appController = Get.find();

  String get total {
    double fold = appController.cartItems.value.fold(0, (subtotal, cartItem) {
      return subtotal + cartItem.product.price * cartItem.quantity;
    });
    return fold.toStringAsFixed(0) + "\원";
  }

  deleteItem(CartItemModel cartItemModel) {
    appController.cartItems.removeWhere((cartItem) {
      return cartItem.product.id == cartItemModel.product.id;
    });
  }

  placeOrder() {
    appController.cartItems.clear();
    Get.back();
    Get.snackbar(
      "주문완료",
      "Order placed with success!",
      backgroundColor: AppColors.DARK,
      colorText: AppColors.WHITE,
      padding: EdgeInsets.all(15),
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(25),
      icon: Icon(Feather.check, color: AppColors.SUB, size: 21),
    );
  }
}
