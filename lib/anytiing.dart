import 'package:flutter/material.dart';

class nnnnnn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack with Column Behind'),
        ),
        body: Stack(
          children: [
            // First widget is at the bottom
            Container(
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Bottom Widget', style: TextStyle(fontSize: 24)),
                  Text('This is behind the Stack', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            // Second widget is stacked on top
            Center(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Top Widget',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}