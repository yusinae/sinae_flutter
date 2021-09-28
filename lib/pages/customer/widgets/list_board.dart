import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/utils/colors.dart';
import 'package:sinae_flutter/pages/customer/controller.dart';
import 'board_detail.dart';

class ListBoard extends StatelessWidget {
  final CustomerController controller = Get.find();

  ListBoard();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        child: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          itemCount: controller.boardlist.length,
          separatorBuilder: (context, index) => Divider(height: 0, color: AppColors.LINE),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                controller.boardlist.value[index].title,
                style: TextStyle(fontSize: 15.0,)),
              onTap: (){
                Get.to(BoardDetail(board: controller.boardlist.value[index]));
              },
              trailing: Icon(Icons.add, size: 14.0, color: AppColors.DARK),
              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              dense:true,
            );
          },
        ),
      );
    });
  }
}
