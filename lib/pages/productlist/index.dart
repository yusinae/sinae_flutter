import 'package:flutter/material.dart';
import 'package:sinae_flutter/widgets/custom_appbar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/pages/productlist/controller.dart';
import 'package:sinae_flutter/utils/colors.dart';
import 'package:sinae_flutter/widgets/appbar_action.dart';
import 'widgets/list_products.dart';
import 'widgets/list_categories.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductlistController>(
      init: ProductlistController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.BACKGROUND,
          appBar: CustomAppBar(
            "Sinae Mall",
            actions: [
              Obx(
                () => CustomAppBarAction(
                  () => Get.toNamed("/cart"),
                  Feather.shopping_cart,
                  quantity: controller.cartQuantity,
                ),
              ),
            ],
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: ListCategories(),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 25,
                ),
                sliver: ListProducts(),
              ),
            ],
          ),
        );
      },
    );
  }
}
