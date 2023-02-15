import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Form(
        key: _formKey,
        child: Scaffold(
          appBar: AppBar(title: const Text('Nova Tarefa')),
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                height: 650,
                width: 375,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 3)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Name',
                            fillColor: Colors.white70,
                            filled: true,
                          ),
                          controller: nameController,
                          onChanged: ((value) => {print(value)}),
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return 'Insira o nome da Tarefa';
                            }
                            return null;
                          }
                          // onSaved: ((value) => {print(value)}),
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Difficulty',
                          fillColor: Colors.white70,
                          filled: true,
                        ),
                        controller: difficultyController,
                        onChanged: ((value) => {print(value)}),
                        keyboardType: TextInputType.number,
                        validator: (String? value) {
                          if (value!.isEmpty ||
                              int.parse(value) > 5 ||
                              int.parse(value) < 1) {
                            return 'Insira uma dificuldade entre 1 e 5';
                          }
                          return null;
                        },

                        // onSaved: ((value) => {print(value)}),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Image',
                          fillColor: Colors.white70,
                          filled: true,
                        ),
                        controller: imageController,
                        onChanged: ((value) => {setState(() {})}),
                        keyboardType: TextInputType.url,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Insira URL de imagem';
                          }
                          return null;
                        },
                        // onSaved: ((value) => {print(value)}),
                      ),
                    ),
                    Container(
                      width: 72,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.blue),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(imageController.text,
                            fit: BoxFit.contain, errorBuilder:
                                (BuildContext context, Object exception,
                                    StackTrace? trace) {
                          return Container(
                              child: ClipRRect(
                            child: Image.asset('assets/images/no-photo.jpg'),
                          ));
                        }),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print('Validado');
                          }
                          // print(nameController.text);
                          // print(difficultyController.text);
                          // print(imageController.text);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Salvando nova tarefa!!'),
                            ),
                          );
                        },
                        child: Text('Adicionar!')),
                    Container(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
