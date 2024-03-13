import 'package:e_commerce_app1_with_edit_flowers_app/constant.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/home/presentation/views/widgets/appbar_widgets.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/home/presentation/views/widgets/drawer_body.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
      body: ListView(
        children: [],
      ),
    );
  }
}
