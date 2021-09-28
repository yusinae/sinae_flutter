import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/models/board.model.dart';
import 'package:sinae_flutter/utils/colors.dart';
import 'package:sinae_flutter/widgets/custom_appbar.dart';
import 'package:sinae_flutter/widgets/appbar_action.dart';

class BoardDetail extends StatelessWidget {
  const BoardDetail({Key key, this.board}) : super(key: key);
  final BoardModel board;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        "Board Detail",
        leadings: [
          CustomAppBarAction(
            () => Get.back(),
            Feather.arrow_left,
          )
        ],
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(board.title,
                style: TextStyle(
                  color: AppColors.DARK,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: AppColors.LINE, width: 1.0),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Text(board.contents),
            ),
          ]
      )
    );
  }
}