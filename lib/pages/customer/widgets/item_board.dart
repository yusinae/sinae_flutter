import 'package:flutter/material.dart';
import 'package:sinae_flutter/models/board.model.dart';
import 'package:sinae_flutter/pages/customer/controller.dart';
import 'package:sinae_flutter/utils/colors.dart';
import 'package:get/get.dart';

class ItemBoard extends StatelessWidget {
  final CustomerController controller = Get.find();
  final BoardModel board;
  //final bool selected;

  ItemBoard(this.board); //, this.selected

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: () => controller.selectBoard(board),
      child: Container(
        decoration: BoxDecoration(
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              this.board.title,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              this.board.contents,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
