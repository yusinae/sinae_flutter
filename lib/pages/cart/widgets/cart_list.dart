import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/pages/cart/controller.dart';
import 'cart_item.dart';
import 'package:sinae_flutter/utils/colors.dart';

class CartList extends StatelessWidget {
  final CartController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.separated(
        padding: EdgeInsets.all(20),
        itemCount: controller.appController.cartItems.length,
        separatorBuilder: (context, index) => Divider(height: 20, color: AppColors.LINE),
        itemBuilder: (context, index) {
          return CartItem(controller.appController.cartItems.value[index]);
        },
      ),
    );
  }
}
