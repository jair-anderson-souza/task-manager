import 'package:flutter/material.dart';
import 'package:starter_name/form_screen.dart';
import 'package:starter_name/task.dart';

void main() {
  // runApp(const ScaffoldWidget());
  runApp(ScaffoldWidget());
}

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
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
            body: ListView(
              children: [
                Task('Aprender Flutter', 'assets/images/flutter.png', 3),
                Task('Andar de Bike', 'assets/images/bike.jpg', 2),
                Task('Meditar', 'assets/images/meditar.jpeg', 5),
                Task('Ler', 'assets/images/ler.jpg', 2),
                Task('Jogar', 'assets/images/jogar.jpg', 1),
                const SizedBox(height: 50)
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FormScreen(),
                ),
              ),
              child: const Icon(Icons.add),
            )));
  }
}
