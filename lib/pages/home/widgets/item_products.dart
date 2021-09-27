import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/models/product.model.dart';
import 'package:sinae_flutter/utils/colors.dart';
import 'package:sinae_flutter/widgets/product_image.dart';

import 'item_products_add.dart';
import 'item_products_like.dart';

class ListItem extends StatelessWidget {
  final ProductModel product;
  ListItem(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {Get.toNamed("/products/${this.product.id.toString()}")},
      child: Container(
        padding: EdgeInsets.only(
          bottom: 10,
        ),
        decoration: BoxDecoration(
          color: AppColors.WHITE,
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 15,
              color: AppColors.SHADOW,
              offset: Offset(6, 10),
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(0),
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
              ),

              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ProductImage(
                    this.product.image,
                    //width: 115,
                    //height: 115,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 7,
                      left: 12,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          this.product.name,
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.DARK,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 2),
                        Text(
                          this.product.price_unit,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.POINT,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ItemAdd(product),
            ItemLike(product),
          ],
        ),
      )
    );
  }
}
