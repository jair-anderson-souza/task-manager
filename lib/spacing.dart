import 'package:flutter/material.dart';

class SpacingWidget extends StatelessWidget {
  const SpacingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter',
        home: Container(
          color: Colors.black,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.orange,
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              height: 100, width: 100, color: Colors.yellow)
                        ],
                      )
                    ],
                  )),
              Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.green,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.cyan,
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Container(height: 100, width: 100, color: Colors.blue)
                        ],
                      )
                    ],
                  )),
              Container(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.purple,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.red,
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              height: 100, width: 100, color: Colors.white)
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
