import 'package:flutter/material.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                )),
            Positioned(
              child: Container(
                child: Container(
                  child: Container(
                    
                    padding: const EdgeInsets.only(left: 2, right: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    child: const Text(
                      "14",
                      style: TextStyle(
                        color: Color(0xff623be2),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(
            right: 5,
            left: 5,
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: const Row(
            children: [
              Text(
                "\$",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              Text(
                "10",
                style: TextStyle(
                    color: Color(0xff623be2),
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}

class AppBarWidgets2 extends StatelessWidget {
  const AppBarWidgets2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
       
         Text(
          "Home",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),
        ),
      ],
    );
  }
}
