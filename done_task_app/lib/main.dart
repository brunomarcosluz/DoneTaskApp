import 'dart:ffi';
import 'package:flutter/material.dart';

void main() => runApp(const DoneTaskApp());

class DoneTaskApp extends StatelessWidget {
  const DoneTaskApp({super.key});

  @override
  Widget build(BuildContext context) {

    final ThemeData tema = ThemeData();

    return MaterialApp(
      title: 'Done.',
      theme: tema.copyWith(
        colorScheme: tema.colorScheme.copyWith(
          primary: Color.fromARGB(255, 14, 13, 13),
          secondary: Colors.white,
        ),
        textTheme: tema.textTheme.copyWith(
          headline1: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          headline6: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white
          ), 
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 14, 13, 13),
        title: const Text('done.'),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.dehaze),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(40),
              child: Text(
                'Do the important first.',
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
            ),

            // Criar container das tarefas pendentes aqui
            

            // Criar Container das tarefas concluidas aqui
            
          ], // Fim dos filhos da Coluna
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 40,
          color: Color.fromARGB(255, 14, 13, 13),
          semanticLabel: 'Create a new task pressing here',
        ),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: Color.fromARGB(255, 14, 13, 13),
    );
  }
}