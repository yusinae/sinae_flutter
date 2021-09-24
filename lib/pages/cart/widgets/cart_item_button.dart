import 'package:flutter/material.dart';
import 'package:sinae_flutter/utils/colors.dart';

class CartItemButton extends StatelessWidget {
  final IconData icon;
  final Function action;
  CartItemButton(this.icon, this.action);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 32,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: AppColors.WHITE,
          elevation: 0.0,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        onPressed: action,
        child: Icon(
          icon,
          color: AppColors.POINT,
          size: 16,
        ),
      ),
    );
  }
}
