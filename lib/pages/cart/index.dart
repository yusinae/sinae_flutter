import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:sinae_flutter/utils/colors.dart';
import 'package:sinae_flutter/widgets/appbar_action.dart';
import 'package:sinae_flutter/widgets/custom_appbar.dart';
import 'package:sinae_flutter/pages/cart/controller.dart';
import 'widgets/cart_list.dart';
import 'widgets/cart_total.dart';

class Cart extends StatelessWidget {
  const Cart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.BACKGROUND,
          appBar: CustomAppBar(
            "Cart",
            leadings: [
              CustomAppBarAction(
                () => Get.back(),
                Feather.arrow_left,
              )
            ],
          ),
          body: CartList(),
          bottomNavigationBar: CartTotal(),
        );
      },
    );
  }
}
