import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinae_flutter/utils/colors.dart';

drawerContents() => (
  ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      UserAccountsDrawerHeader(
        currentAccountPicture: FittedBox(
          fit: BoxFit.contain,
          child: Image.asset('assets/images/img1.png'),
        ),
        currentAccountPictureSize: Size(80, 80),
        otherAccountsPicturesSize: Size(70, 70),
        accountName: const Text('sinae'),
        decoration: BoxDecoration(
          color: AppColors.LIGHT,
        ),
      ),
      ListTile(
        title: const Text('Home', style: TextStyle(
          fontSize: 14.0,
        )),
        onTap: (){Get.back();},
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
        dense:true,
      ),
      ListTile(
        title: const Text('상품목록11', style: TextStyle(
          fontSize: 14.0,
        )),
        onTap: (){Get.toNamed("/");},
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
        dense:true,
      ),
      ListTile(
        title: const Text('상품목록22', style: TextStyle(
          fontSize: 14.0,
        )),
        onTap: (){Get.toNamed("/");},
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
        dense:true,
      ),
      ListTile(
        title: const Text('장바구니', style: TextStyle(
          fontSize: 14.0,
        )),
        onTap: (){Get.toNamed("/cart");},
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
        dense:true,
      ),
      ListTile(
        title: const Text('고객센터', style: TextStyle(
          fontSize: 14.0,
        )),
        onTap: (){Get.toNamed("/customer");},
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
        dense:true,
      )
    ]
  )
);