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
          Table(
            border: TableBorder.all(color: Colors.white),
            columnWidths: const <int, TableColumnWidth>{
              0: IntrinsicColumnWidth(),
              1: FlexColumnWidth(1.0),
              2: FixedColumnWidth(100.0),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.top,
            children: [
              TableRow(children: [
                const Text('A'),
                const Text('B'),
                const Text('C'),
              ]),
              TableRow(children: [
                Container(
                  child: const Text("D"),
                  margin: EdgeInsets.all(10.0),
                  width: 50.0,
                  height: 100.0,
                  color: Colors.lightGreen,
                ),
                Container(
                  child: const Text('E'),
                  color: Colors.amberAccent,
                ),
                TableCell(
                    verticalAlignment: TableCellVerticalAlignment.bottom,
                    child: Container(
                      child: const Text('F'),
                      margin: EdgeInsets.only(bottom: 10.0),
                      height: 60,
                      color: Colors.orange,
                    ))
              ]),
              TableRow(
                  decoration: const BoxDecoration(color: Colors.grey),
                  children: [
                    Center(
                      child: Container(
                        child: Text(
                          'G',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        width: 30,
                        height: 100,
                        color: Colors.pinkAccent,
                      ),
                    ),
                    Container(child: Text("H\n8")),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Container(
                        child: const Text(
                          'I',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        height: 50,
                        color: Colors.blue,
                      ),
                    ),
                  ]),
            ],
          ),
          TextButton(
              onPressed: () => {Navigator.of(context).pop()},
              child: Text("戻る", style: TextStyle(fontSize: 20)))
        ])));
  }
}
