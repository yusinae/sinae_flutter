import 'package:get/get.dart';

class ProductModel {
  ProductModel({
    int id,
    String name,
    String category,
    int price,
    String image,
    String description,
  }) {
    this.id = id;
    this.name = name;
    this.category = category;
    this.price = price;
    this.image = image;
    this.description = description;
    this.like = false;
  }

  RxInt _id = RxInt(0);
  set id(int value) => _id.value = value;
  int get id => _id.value;

  RxString _name = RxString('');
  set name(String value) => _name.value = value;
  String get name => _name.value;

  RxString _category = RxString('');
  set category(String value) => _category.value = value;
  String get category => _category.value;

  RxInt _price = RxInt(0);
  set price(int value) => _price.value = value;
  int get price => _price.value;

  RxString _image = RxString('');
  set image(String value) => _image.value = value;
  String get image => _image.value;

  RxString _description = RxString('');
  set description(String value) => _description.value = value;
  String get description => _description.value;

  RxBool _like = RxBool(false);
  set like(bool value) => _like.value = value;
  bool get like => _like.value;

  String get price_unit {
    return this.price.toStringAsFixed(0) + "\원";
  }

}
