import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/models/product.model.dart';
import 'package:sinae_flutter/pages/product/controller.dart';
import 'package:sinae_flutter/widgets/cart_button.dart';
import 'package:sinae_flutter/utils/colors.dart';

class ProductDetails extends StatelessWidget {
  final ProductController controller = Get.find();
  final ProductModel product;

  ProductDetails(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.WHITE,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),        
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 25),
              margin: EdgeInsets.only(bottom: 25),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.LIGHT,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Obx(
                    () => Text(
                      controller.product?.name ?? "",
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColors.DARK,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Obx(
                    () => Text(
                      controller.product?.description ?? "",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.DARK,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    this.product?.price_unit ?? "0",
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.POINT,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: CartButton(
                    controller.addProduct,
                    "장바구니 추가",
                    Feather.shopping_cart,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
