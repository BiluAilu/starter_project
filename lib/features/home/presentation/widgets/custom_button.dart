import 'package:flutter/material.dart';
import 'package:starter_project/core/utils/colors.dart';
class CustomButton extends StatelessWidget {
  Icon icon;
   
    VoidCallback onPressed;
  CustomButton({required this.icon,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.white, // Change border color as needed
          width: 1.0,
        ),
        color: button_color,
      ),
      child: FloatingActionButton(
        
        onPressed: onPressed,
        child: icon,
        
        backgroundColor: Colors.transparent, // Make FAB background transparent
        elevation: 0, // Remove shadow
      ),
    );
  }
}



