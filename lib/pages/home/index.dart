import 'package:flutter/material.dart';
import 'package:sinae_flutter/widgets/custom_appbar.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/pages/productlist/index.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Productlist();
  }
}
