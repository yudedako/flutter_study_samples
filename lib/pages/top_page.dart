import 'package:flutter/material.dart';
import 'table_page.dart';

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Topページ"),
        ),
        body: Center(
            child: TextButton(
                onPressed: () => {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return TablePage();
                      }))
                    },
                child: Text("tableサンプル", style: TextStyle(fontSize: 20)))));
  }
}
