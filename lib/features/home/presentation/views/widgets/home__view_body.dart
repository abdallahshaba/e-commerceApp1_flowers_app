import 'package:e_commerce_app1_with_edit_flowers_app/constant.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/core/styles.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/home/presentation/views/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
      Stack(
        children: [
          Container(
            height: 170,
            width: double.infinity,
            decoration: const BoxDecoration(color: kPrimaryColor2),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 25, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'PRODUCT LIST',
                          style: Styles.textStyle20,
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.only(),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 260,
            width: double.infinity,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CustomCard();
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
     const SizedBox(height: 20,),
      Container(
        height: 800,
        child: const CustomGridView(),
      )
    ],
    );
  }
}

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 3),
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {},
          child:  Container() ,
        );
      },
    );
  }
}
