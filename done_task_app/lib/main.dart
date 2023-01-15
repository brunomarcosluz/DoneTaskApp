import 'package:flutter/material.dart';

void main() => runApp(const DoneTaskApp());

class DoneTaskApp extends StatelessWidget {
  const DoneTaskApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Done. - Do the important.',
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
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
        title: const Text('Done. - Do the important.'),
        leading: Placeholder(
          color: Colors.red,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: "You Completed Task's",
            onPressed: () {
              return null;
            },
          )
        ],
      ),
    );
  }
}