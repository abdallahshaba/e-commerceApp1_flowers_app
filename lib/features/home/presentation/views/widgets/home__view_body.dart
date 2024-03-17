import 'package:e_commerce_app1_with_edit_flowers_app/constant.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/core/model/flower_model.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/home/presentation/views/widgets/appbar_widgets.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/home/presentation/views/widgets/drawer_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

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
        itemCount: flowerItem.length,
        itemBuilder: (BuildContext context, int index) {
          return Material(
            elevation: 0.5,
            shadowColor: Colors.brown,
            borderRadius: BorderRadius.circular(18),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 12),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          SizedBox(
                            height: 10,
                            child: Icon(Icons.favorite_border),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push('/DetailsView');
                        },
                        child: Container(
                          child: Image.asset(
                            flowerItem[index].imagPath,
                            height: 170,
                            width: 160,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              flowerItem[index].price,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            GestureDetector(
                                onTap: () {}, child: const Icon(Icons.add))
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
}
