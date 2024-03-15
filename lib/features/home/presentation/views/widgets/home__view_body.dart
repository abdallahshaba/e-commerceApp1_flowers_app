import 'package:e_commerce_app1_with_edit_flowers_app/constant.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/home/presentation/views/widgets/appbar_widgets.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/home/presentation/views/widgets/drawer_body.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
   HomeViewBody({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        actions: const [AppBarWidgets()],
        backgroundColor: const Color(0xff623be2),
        title: const AppBarWidgets2(),
      ),
      drawer: const Drawer(child: DrawerBody()),
      backgroundColor: kPrimaryColor,
      body: GridView.builder(
        padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1 / 1.4),
        itemCount: flowerItem.length ,



        itemBuilder: (BuildContext context, int index) {
          return  Material(
      elevation: 0.2,
      borderRadius: BorderRadius.circular(18),
      child: GestureDetector(
        onTap: () {
          
        },
        child: Container(
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 12,left: 12),
            child: Column(
              children: [
               const Row(
                  children: [
                   SizedBox(height: 10,
                   child: Icon(Icons.favorite_border
                   ),)
                  ],
                ),
                Container(
                  child: Image.asset(flowerItem[index].imagPath ,
                   height: 170,
                   width: 150,
                   ),),
                 const SizedBox(height: 25,),
                  Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(flowerItem[index].price , style: TextStyle(
                        fontSize: 18 , fontWeight: FontWeight.bold , 
                       ),),
                       GestureDetector(
                        onTap: () {
                          
                        },
                        child: const Icon(Icons.add))
                     ],
                   ),
                 ),
              ],
            ),
          ),
        ),
      ),
    );
        },
      ),
    );
  }
  List<Flowers> flowerItem = [
  Flowers(imagPath: 'assets/images/1.png', price: '\$255'),
  Flowers(imagPath: 'assets/images/2.png', price: '\$230'),
  Flowers(imagPath: 'assets/images/3.png', price: '\$245'),
  Flowers(imagPath: 'assets/images/5.png', price: '\$224'),
  Flowers(imagPath: 'assets/images/6.png', price: '\$200'),
  Flowers(imagPath: 'assets/images/7.png', price: '\$254'),
  Flowers(imagPath: 'assets/images/1.png', price: '\$290'),
  Flowers(imagPath: 'assets/images/2.png', price: '\$265'),
  Flowers(imagPath: 'assets/images/3.png', price: '\$275'),
  Flowers(imagPath: 'assets/images/4.png', price: '\$295'),
  Flowers(imagPath: 'assets/images/5.png', price: '\$400'),
  Flowers(imagPath: 'assets/images/6.png', price: '\$255'),
];
  
}
class Flowers {
  String imagPath;
  String price;

  Flowers({required this.imagPath, required this.price});
}






