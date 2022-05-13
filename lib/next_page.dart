import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  //const  NextPage({Key? key, required this.fish}) : super(key: key);
  NextPage(this.fish);
  final String fish;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fishing List'),
      ),
      body:Container(
        height: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(fish),
            Center(
              child: ElevatedButton(
                  child: const Text("戻る"),
                onPressed: (){
                  // Within the `FirstRoute` widget
                  Navigator.pop(context, '日立アカデミーおもんない');
                },
              ),
            ),
          ],
        ),
      )
    );
  }
}