import 'package:e_commerce_app1_with_edit_flowers_app/constant.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        children: [
          CustomAppBar()
        ],
      )
    );
  }
}
