import 'package:flutter/material.dart';

class ColorsWidget extends StatelessWidget {
  const ColorsWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(color: Colors.red, width: 100, height: 100),
                  Container(color: Colors.blue, width: 50, height: 50)
                ],
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(color: Colors.blue, width: 100, height: 100),
                  Container(color: Colors.red, width: 50, height: 50)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(color: Colors.cyan, width: 50, height: 50),
                  Container(color: Colors.pinkAccent, width: 50, height: 50),
                  Container(color: Colors.purple, width: 50, height: 50)
                ],
              ),
              Container(
                  color: Colors.amber,
                  height: 401,
                  width: 300,
                  child: const Text('Diamente amarelo',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 28))),
              SizedBox(
                width: 52,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      print('Você clicou em um botão');
                    },
                    child: const Text('Aperte um botão')),
              )
            ],
          )),
    );
  }
}
