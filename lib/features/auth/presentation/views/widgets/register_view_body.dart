import 'package:e_commerce_app1_with_edit_flowers_app/core/styles.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce_app1_with_edit_flowers_app/features/auth/presentation/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom
      ),
      child: Stack(
        children: [
          Container(
            color: const Color(0xff623be2),
            height: 850,
            width: 50,
          ),
          Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                'assets/images/flower-purple-lical-blosso.jpg',
                fit: BoxFit.fill,
              )),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 270
              ),
              child: Card(
                elevation: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  alignment: Alignment.center,
                  height: 450,
                  width: 365,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          color: Color(0xff623be2),
                        ),
                        height: 25,
                        width: double.infinity,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: RichText(
                          text: const TextSpan(
                              style: Styles.textStyle80,
                              children: [
                                TextSpan(
                                  text: 'FLOWERS ',
                                ),
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                                fontSize: 18,
                                letterSpacing: 4.7,
                                color: Colors.black.withOpacity(0.6)),
                            children: const [
                              TextSpan(
                                text: 'FLOWERS SHOP APP',
                                style: TextStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const CustomTextField(
                        hintText: 'Email',
                        icon: Icon(Icons.email, color: Color(0xff77789b)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomTextField(
                        hintText: 'Password',
                        icon: Icon(
                          Icons.lock,
                          color: Color(0xff77789b),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomButton(
                        color: const Color(0xffff9501),
                        text: 'Register',
                        onPressed: () {
                          GoRouter.of(context).push('/LoginView');
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                        child: Text(
                          'Already have an account?',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                             GoRouter.of(context).push('/LoginView');
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
