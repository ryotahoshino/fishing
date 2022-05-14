import 'package:fishing/memo_page.dart';
import 'package:fishing/post_page.dart';
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
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text(
                "釣果投稿",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PostPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text(
              "釣りメモ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MemoPage()),
              );
            },
          )
        ],
      )
    );
  }
}
