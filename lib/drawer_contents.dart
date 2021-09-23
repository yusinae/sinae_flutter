import 'package:flutter/material.dart';
import 'package:get/get.dart';

drawerContents(context) => (
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
        accountEmail: const Text('sinae@test.co.kr'),
        onDetailsPressed:(){
          Navigator.pop(context);
        },
        decoration: const BoxDecoration(
          color: Colors.grey,
        ),
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('products', style: TextStyle(
          fontSize: 15.0,
        )),
        onTap: (){
          Get.toNamed('/products');
        },
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
        dense:true,
      )
    ]
  )
);