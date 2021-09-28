import 'package:flutter/material.dart';
import 'package:sinae_flutter/models/category.model.dart';
import 'package:sinae_flutter/pages/productlist/controller.dart';
import 'package:sinae_flutter/utils/colors.dart';
import 'package:get/get.dart';

class ItemCategories extends StatelessWidget {
  final ProductlistController controller = Get.find();
  final CategoryModel category;
  final bool selected;

  ItemCategories(this.category, this.selected);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.selectCategory(category),
      child: Container(
        decoration: BoxDecoration(
            //border: Border.all(color: Colors.black12, width: 1)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              this.category.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.DARK.withOpacity(selected ? 1 : 0.3),
              ),
            ),
            Visibility(
              visible: selected,
              child: Container(
                margin: EdgeInsets.only(top: 2),
                width: 50,
                height: 2,
                decoration: BoxDecoration(
                  color: AppColors.POINT,
                  //borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
