import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/pages/customer/controller.dart';
import 'package:sinae_flutter/widgets/custom_appbar.dart';
import 'package:sinae_flutter/widgets/appbar_action.dart';
import 'package:sinae_flutter/utils/colors.dart';
import 'widgets/list_board.dart';

class Customer extends StatelessWidget {
  const Customer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerController>(
      init: CustomerController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.BACKGROUND,
          appBar: CustomAppBar(
            "Customer center",
            leadings: [
              CustomAppBarAction(
                () => Get.back(),
                Feather.arrow_left,
              )
            ],
          ),
          body: ListBoard()
        );
      },
    );
  }
}
