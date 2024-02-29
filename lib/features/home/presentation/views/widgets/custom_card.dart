import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 10),
      child: SizedBox(
        width: 270,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/11.jpg',
                  ),
                  fit: BoxFit.fill),
              color: Colors.blueAccent),
          child: Padding(
            padding: const EdgeInsets.only(top: 105, left: 15),
            child: Container(
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CHAIRES',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                        ),
                  ),
                  Text(
                    '125 PRODUCTS',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}