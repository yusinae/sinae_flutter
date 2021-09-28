import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:sinae_flutter/models/cart_item.model.dart';
import 'package:sinae_flutter/models/product.model.dart';
import 'package:sinae_flutter/utils/json.dart';
import 'package:sinae_flutter/controller.dart';

class ProductController extends GetxController {
  AppController appController = Get.find();
  Rx<ProductModel> _product = Rx<ProductModel>(null);
  setProduct(ProductModel value) => _product.value = value;
  ProductModel get product {
    return _product.value;
  }

  ProductController() {
    loadProduct();
  }

  loadProduct() async {
    try {
      List<dynamic> data = await loadJson("assets/data/products.json");
      dynamic item = data.firstWhere((item) {
        return item["id"].toString() == Get.parameters["id"].toString();
      });
      setProduct(ProductModel(
        id: item["id"],
        name: item["name"],
        category: item["category"],
        price: item["price"],
        image: item["image"],
        description: item["description"],
      ));
      if(Get.arguments == "cart") addProduct();
    } catch (error) {
      print(error.toString());
    }
  }

  addProduct() {
    try {
      CartItemModel cartItem =
          appController.cartItems.value.firstWhere((cartItem) {
            print(this.product.id);
            print('아이디');
        return cartItem.product.id == this.product.id;
      });
      cartItem.incrementQuantity();
    } catch (error) {
      appController.cartItems.add(CartItemModel(
        product: this.product,
        quantity: 1,
      ));
    }
    Get.back();
  }
}
