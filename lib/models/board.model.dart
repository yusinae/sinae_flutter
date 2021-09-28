import 'package:get/get.dart';

class BoardModel {
  BoardModel({
    int id,
    String title,
    String contents,
  }) {
    this.id = id;
    this.title = title;
    this.contents = contents;
  }

  RxInt _id = RxInt(0);
  set id(int value) => _id.value = value;
  int get id => _id.value;

  RxString _title = RxString('');
  set title(String value) => _title.value = value;
  String get title => _title.value;

  RxString _contents = RxString('');
  set contents(String value) => _contents.value = value;
  String get contents => _contents.value;
}
