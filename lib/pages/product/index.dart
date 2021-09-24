import 'package:flutter/material.dart';
import 'package:sinae_flutter/widgets/appbar_action.dart';
import 'package:sinae_flutter/widgets/custom_appbar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/pages/product/controller.dart';
import 'package:sinae_flutter/utils/colors.dart';
import 'package:sinae_flutter/widgets/product_image.dart';
import 'widgets/product_details.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.LIGHT,
          appBar: CustomAppBar(
            "Product Detail",
            leadings: [
              CustomAppBarAction(
                () => Get.back(),
                Feather.arrow_left,
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Obx(
                  () => ProductImage(
                    controller?.product?.image,
                    height: Get.width - 40,
                    padding: 20,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Obx(() => ProductDetails(controller.product)),
        );
      },
    );
  }
}
