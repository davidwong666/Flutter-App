import 'package:firstapp/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
  ChangeNotifierProvider(
    create: (context) => Counter(),
    child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 19, 191, 128)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                value.count.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              FloatingActionButton(
                onPressed: (){
                  final counter = context.read<Counter>();
                  counter.increment();
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Add'),
                  ],
                ),
              ),
            ],
          ),
        ),// This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}