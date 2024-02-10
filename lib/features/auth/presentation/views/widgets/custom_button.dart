import 'package:e_commerce_app1_with_edit_flowers_app/core/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, required this.text, required this.color});
  final void Function()? onTap;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15 , right: 15),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          width: 346,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Center(
            child: Text(
             text , 
            style: Styles.textStyle18.copyWith(color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold
            ),
            ),
          ),
        ),
      ),
    );
  }
}