import 'package:flutter/material.dart';

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
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 200,
                        child: Text(widget.name,
                            style: const TextStyle(
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
                SizedBox(
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
                      children: const [
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
              child: SizedBox(
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
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
          ])
        ])
      ]),
    );
  }
}
