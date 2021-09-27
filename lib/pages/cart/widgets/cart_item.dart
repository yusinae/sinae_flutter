import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/models/cart_item.model.dart';
import 'package:sinae_flutter/pages/cart/controller.dart';
import 'package:sinae_flutter/utils/colors.dart';
import 'package:sinae_flutter/widgets/product_image.dart';

import 'cart_item_button.dart';

class CartItem extends StatelessWidget {
  final CartController cartController = Get.find();
  final CartItemModel cartItem;
  CartItem(this.cartItem);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ProductImage(
          this.cartItem.product.image,
          height: 80,
          width: 80,
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                this.cartItem.product.name,
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.DARK,
                ),
              ),
              SizedBox(height: 3),
              Row(
                children: <Widget>[
                  Text(
                    this.cartItem.product.price_unit,
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.POINT,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Obx(
                        () => Text(
                      "${this.cartItem.quantity.toString()}개",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.DARK,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Row(
          children: <Widget>[
            CartItemButton(Feather.minus, this.cartItem.decrementQuantity),
            SizedBox(width: 6),
            CartItemButton(Feather.plus, this.cartItem.incrementQuantity),
            SizedBox(width: 6),
            CartItemButton(Feather.trash, () => cartController.deleteItem(this.cartItem)),
          ],
        )
      ],
    );
  }
}
