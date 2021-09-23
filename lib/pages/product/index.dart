import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          elevation: 0.0,
          title: Text('Product'),
          centerTitle: true,
          leading: IconButton(
            color: Colors.grey[800],
            icon: Icon(Icons.arrow_back),
            iconSize: 20,
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Product')
                ]
            )
        )
    );
  }
}
