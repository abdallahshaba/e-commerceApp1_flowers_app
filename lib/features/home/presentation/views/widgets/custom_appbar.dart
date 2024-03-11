import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.icon1});
  final IconData? icon1;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Row(
        children: [
      
          Icon(icon1),
      
         const Padding(
            padding: EdgeInsets.only(left: 20 , right: 150),
            child: Text("Home" , style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ), ),
          ),
          Stack(
            children:[
              Padding(
                padding: const EdgeInsets.only(),
                child: Container(
                 height: 20,
                 width: 20,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   shape: BoxShape.circle
                 ),
                 child: Text(' 12' , style: TextStyle(
                   fontSize: 16
                 ),),
                ),
              ),
               IconButton(
              onPressed: (){},
             icon: Icon(Icons.add_shopping_cart, size: 29,)
             ),
             
                  ]),
         const Text('\$14' , style: TextStyle(fontSize: 23 , 
          fontWeight: FontWeight.bold,
          ),)
      
      
        ],
      ),
    );
  }
}