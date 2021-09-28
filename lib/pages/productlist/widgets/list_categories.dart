import 'package:flutter/material.dart';
import 'package:sinae_flutter/models/category.model.dart';
import 'package:get/get.dart';
import '../controller.dart';
import 'item_categories.dart';

class ListCategories extends StatelessWidget {
  final ProductlistController controller = Get.find();

  ListCategories();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: 80,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          separatorBuilder: (BuildContext context, int index) => SizedBox(width: 50),
          itemCount: controller.categories.length,
          itemBuilder: (_, index) {
            CategoryModel category = controller.categories.elementAt(index);
            return Obx(() {
              return ItemCategories(
                category,
                category == controller.selectedCategory,
              );
            });
          },
        ),
      );
    });
  }
}
