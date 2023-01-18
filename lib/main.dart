import 'package:flutter/material.dart';

void main() {
  runApp(ScaffoldWidget());
}

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
              Container(
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

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(color: Colors.red, width: 100, height: 100),
            Container(color: Colors.blue, width: 50, height: 50)
          ],
        ));
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(color: Colors.red, width: 100, height: 100),
            Container(color: Colors.blue, width: 50, height: 50)
          ],
        ));
  }
}

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

class ScaffoldWidget extends StatefulWidget {
  ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  bool opacity = true;

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
              duration: Duration(milliseconds: 800),
              child: ListView(
                children: [
                  Task(
                      'Aprender Flutter',
                      'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                      3),
                  Task(
                      'Andar de Bike',
                      'https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg',
                      2),
                  Task(
                      'Meditar',
                      'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
                      5),
                  Task(
                      'Ler',
                      'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg',
                      2),
                  Task(
                      'Jogar',
                      'https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg',
                      1),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    opacity = !opacity;
                  });
                },
                child: Icon(Icons.remove_red_eye))));
  }
}

class Task extends StatefulWidget {
  final String name;
  final String image;
  final int dificulty;
  bool opacity = true;

  Task(this.name, this.image, this.dificulty, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.blue,
          ),
        ),
        Column(children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.black26,
                  ),
                  width: 72,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      widget.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 200,
                        child: Text(widget.name,
                            style: TextStyle(
                                fontSize: 24,
                                overflow: TextOverflow.ellipsis))),
                    Row(
                      children: [
                        Icon(Icons.star,
                            size: 15,
                            color: (widget.dificulty) >= 1
                                ? Colors.blue
                                : Colors.blue[100]),
                        Icon(Icons.star,
                            size: 15,
                            color: (widget.dificulty) >= 2
                                ? Colors.blue
                                : Colors.blue[100]),
                        Icon(Icons.star,
                            size: 15,
                            color: (widget.dificulty) >= 3
                                ? Colors.blue
                                : Colors.blue[100]),
                        Icon(Icons.star,
                            size: 15,
                            color: (widget.dificulty) >= 4
                                ? Colors.blue
                                : Colors.blue[100]),
                        Icon(Icons.star,
                            size: 15,
                            color: (widget.dificulty) >= 5
                                ? Colors.blue
                                : Colors.blue[100]),
                      ],
                    )
                  ],
                ),
                Container(
                  width: 52,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nivel++;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.arrow_drop_up),
                        Text(
                          'UP',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                width: 200,
                child: LinearProgressIndicator(
                  color: Colors.white,
                  value: (widget.dificulty > 0)
                      ? (nivel / widget.dificulty) / 10
                      : 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Nível $nivel',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
          ])
        ])
      ]),
    );
  }
}
