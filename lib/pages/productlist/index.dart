import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/pages/productlist/controller.dart';
import 'package:sinae_flutter/widgets/custom_appbar.dart';
import 'package:sinae_flutter/widgets/appbar_action.dart';
import 'package:sinae_flutter/utils/colors.dart';
import 'package:sinae_flutter/drawer.dart';
import 'widgets/list_products.dart';
import 'widgets/list_categories.dart';

class Productlist extends StatelessWidget {
  Productlist({Key key}) : super(key: key);

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductlistController>(
      init: ProductlistController(),
      builder: (controller) {
        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: AppColors.BACKGROUND,
          drawer: Drawer(
            child: drawerContents()
          ),
          appBar: CustomAppBar(
            "Sinae mall",
            leadings: [
              CustomAppBarAction(
                () => _scaffoldKey.currentState.openDrawer(),
                Feather.menu,
              )
            ],
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
