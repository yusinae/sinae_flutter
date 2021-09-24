import 'package:flutter/material.dart';
import 'package:sinae_flutter/utils/colors.dart';

class CartButton extends StatelessWidget {

  final Function action;
  final String label;
  final IconData icon;
  CartButton(this.action, this.label, this.icon);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
          primary: AppColors.WHITE,
          //minimumSize: Size(150,50),
          elevation: 0.0,
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          textStyle: TextStyle(fontSize: 10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              label,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 13,
                color: AppColors.DARK,
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.LIGHT_POINT,
              borderRadius: BorderRadius.circular(40),
            ),
            margin: EdgeInsets.only(
              left: 10,
            ),
            child: Icon(
              this.icon,
              color: AppColors.WHITE,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
