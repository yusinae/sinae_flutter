import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/models/product.model.dart';
import 'package:sinae_flutter/pages/product/controller.dart';
import 'package:sinae_flutter/utils/colors.dart';

class ItemAdd extends StatelessWidget {
  //final ProductController controller = Get.find();
  final ProductModel product;
  ItemAdd(this.product);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: SizedBox(
        width: 40,
        height: 40,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
          ),
          child: Icon(
            Feather.eye,
            size: 18,
            color: AppColors.DARK,
          ),
          onPressed: () =>
              Get.toNamed("/products/${this.product.id.toString()}"),
              //controller.addProduct,
        ),
      ),
    );
  }
}
