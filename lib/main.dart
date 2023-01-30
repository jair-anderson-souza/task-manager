import 'package:flutter/material.dart';
import 'package:starter_name/task.dart';

void main() {
  runApp(const ScaffoldWidget());
}

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My first Scaffold',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
            appBar: AppBar(
              centerTitle: false,
              leading: Container(),
              title: const Text('Tarefas'),
            ),
            body: AnimatedOpacity(
              opacity: opacity ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: ListView(
                children: [
                  Task('Aprender Flutter', 'assets/images/flutter.png', 3),
                  Task('Andar de Bike', 'assets/images/bike.jpg', 2),
                  Task('Meditar', 'assets/images/meditar.jpeg', 5),
                  Task('Ler', 'assets/images/ler.jpeg', 2),
                  Task('Jogar', 'assets/images/jogar.jpeg', 1),
                  const SizedBox(height: 50)
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    opacity = !opacity;
                  });
                },
                child: const Icon(Icons.remove_red_eye))));
  }
}
