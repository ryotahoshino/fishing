import 'package:flutter/material.dart';

class PostPage extends StatelessWidget{
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text("投稿ページ"),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.amber,
      ),
    );
  }

}