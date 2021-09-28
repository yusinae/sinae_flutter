import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:sinae_flutter/controller.dart';
import 'package:sinae_flutter/models/board.model.dart';
import 'package:sinae_flutter/utils/json.dart';

class CustomerController extends GetxController {
  AppController appController = Get.find();
  RxList<BoardModel> boardlist = RxList<BoardModel>([]);

  CustomerController() {
    loadBoard();
  }

  loadBoard() async {
    List<dynamic> dataBoard = await loadJson(
      "assets/data/board.json",
    );
    boardlist.addAll(dataBoard
        .map<BoardModel>((board) => BoardModel(
      id: board["id"],
      title: board["title"],
      contents: board["contents"],
    )).toList());
  }
}
