import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Table Sample Page'),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
              onPressed: () => {Navigator.of(context).pop()},
              child: Text("戻る", style: TextStyle(fontSize: 20)))
        ])));
  }
}
