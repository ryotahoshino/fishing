import 'package:fishing/next_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = List<String>.generate(10000, (i) => 'Item $i');
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  String word = "次へ";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: const Text('Fishing App'),
        actions: const <Widget>[
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(100, (index) {
            return Column(
              children: <Widget>[
                Expanded(
                  child: Image.asset('images/IMG_5127.png'),
                ),
                Text('Ugui $index'),
              ],
            );
          }),
        ),
      ),
    );
  }
}
