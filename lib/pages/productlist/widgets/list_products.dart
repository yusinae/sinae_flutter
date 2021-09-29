import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/pages/productlist/controller.dart';

import 'item_products.dart';

class ListProducts extends StatelessWidget {
  final ProductlistController controller = Get.find();
  final double itemHeight = Get.width / 2.7;
  final double itemWidth = Get.width / 2 - 100;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 14.0,
            crossAxisSpacing: 14.0,
            childAspectRatio: itemWidth / itemHeight),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListItem(controller.products.elementAt(index));
            },
            childCount: controller.products.length ?? 0,
          ),
        );
      },
    );
  }
}
