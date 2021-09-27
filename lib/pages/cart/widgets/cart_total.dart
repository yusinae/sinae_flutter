import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/utils/colors.dart';
import 'package:sinae_flutter/pages/cart/controller.dart';
import 'package:sinae_flutter/widgets/cart_button.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.WHITE,
        border: Border(
          top: BorderSide(
            color: AppColors.LIGHT,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "TOTAL",
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.DARK,
                    ),
                  ),
                  SizedBox(height: 3),
                  Obx(
                    () => Text(
                      controller.total,
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.POINT,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: CartButton(
                controller.placeOrder,
                "PURCHASE",
                Feather.chevron_right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
