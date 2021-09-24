import 'package:flutter/material.dart';
import 'package:sinae_flutter/utils/colors.dart';

class CustomAppBarAction extends StatelessWidget {
  final Function action;
  final IconData icon;
  final int quantity;

  CustomAppBarAction(this.action, this.icon, {this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: SizedBox(
        width: 50,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            onPrimary: Colors.transparent,
            //onSurface: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0.0,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          onPressed: action,
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Icon(
                icon,
                size: 18,
                color: AppColors.POINT,
              ),
              Visibility(
                visible: quantity != null,
                child: Positioned(
                  top: -5,
                  right: -10,
                  child: Container(
                    width: 15,
                    height: 15,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.DARK,
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      quantity.toString() ?? "",
                      style: TextStyle(
                        fontSize: 11,
                        color: AppColors.WHITE,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
