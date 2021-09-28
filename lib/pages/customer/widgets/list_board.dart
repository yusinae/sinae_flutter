import 'package:flutter/material.dart';
import 'package:sinae_flutter/models/board.model.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/utils/colors.dart';
import 'package:sinae_flutter/pages/customer/controller.dart';
import 'item_board.dart';

class ListBoard extends StatelessWidget {
  final CustomerController controller = Get.find();

  ListBoard();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: 80,
        child: ListView.separated(
          padding: EdgeInsets.all(20),
          itemCount: controller.boardlist.length,
          separatorBuilder: (context, index) => Divider(height: 20, color: AppColors.LINE),
          itemBuilder: (context, index) {
            print(controller.boardlist.value[index].title);
            return ItemBoard(controller.boardlist.value[index]);
          },
        ),
      );
    });
  }
}
