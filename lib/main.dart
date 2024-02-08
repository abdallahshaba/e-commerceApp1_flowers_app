import 'package:e_commerce_app1_with_edit_flowers_app/constant.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kPrimaryColor,
        body: LoginView(),
      )
    );
  }
}