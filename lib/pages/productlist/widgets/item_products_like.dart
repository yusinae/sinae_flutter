import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/models/product.model.dart';
import 'package:sinae_flutter/utils/colors.dart';

class ItemLike extends StatelessWidget {
  final ProductModel product;
  ItemLike(this.product);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: SizedBox(
        width: 40,
        height: 40,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0.0,
              padding: EdgeInsets.zero,
          ),
          child: Obx(() {
            return Icon(
              Feather.heart,
              size: 18,
              color: this.product.like ? AppColors.POINT : AppColors.LIGHT,
            );
          }),
          onPressed: () => this.product.like = !product.like,
        ),
      ),
    );
  }
}
