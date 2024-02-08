import 'package:e_commerce_app1_with_edit_flowers_app/constant.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: LoginViewBody()
    );
  }
}