import 'package:flutter/material.dart';
import '../../drawer_contents.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          elevation: 0.0,
          title: const Text('Home'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Home')
                ]
            )
        ),
        drawer: Drawer(
            child: drawerContents(context)
        )
    );
  }
}
