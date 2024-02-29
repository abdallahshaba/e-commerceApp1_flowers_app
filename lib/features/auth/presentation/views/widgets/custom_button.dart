import 'package:animated_button/animated_button.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/core/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {super.key, required this.text, required this.color, required this.onPressed});
  final String text;
  final Color color;
  final void Function() onPressed;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: AnimatedButton(
        width: 330,
        height: 55,
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
          style:  Styles.textStyle18.copyWith(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight:  FontWeight.bold),
        ),
        color: const Color(0xffff9501),
        enabled: true,
        shadowDegree: ShadowDegree.light,
        duration: 5,
      ),
    );
  }
}



















// GestureDetector(
//         onTap: widget.onTap,
//         child: Container(
//           height: 50,
//           width: 346,
//           decoration: BoxDecoration(
//             color: widget.color,
//             borderRadius: BorderRadius.circular(12)
//           ),
//           child: Center(
//             child: Text(
//              widget.text , 
//             style: Styles.textStyle18.copyWith(color: Colors.white,
//             fontFamily: 'Poppins',
//             fontWeight: FontWeight.bold
//             ),
//             ),
//           ),
//         ),
//       ),