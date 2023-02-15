import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(color: Colors.black, width: 300, height: 300),
            Container(color: Colors.blue, width: 150, height: 150),
            Container(color: Colors.blue, width: 75, height: 75),
            Container(color: Colors.yellow, width: 37, height: 37)
          ],
        ));
  }
}
