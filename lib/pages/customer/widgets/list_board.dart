import 'package:flutter/material.dart';
import 'package:sinae_flutter/models/board.model.dart';
import 'package:get/get.dart';
import '../controller.dart';
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
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          separatorBuilder: (BuildContext context, int index) => SizedBox(width: 50),
          itemCount: controller.boardlist.length,
          itemBuilder: (_, index) {
            BoardModel board = controller.boardlist.elementAt(index);
            return Obx(() {
              return ItemBoard(
                board,
                //board == controller.selectedBoard,
              );
            });
          },
        ),
      );
    });
  }
}
