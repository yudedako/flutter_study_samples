import 'package:flutter/material.dart';
import 'table_page.dart';
import 'hero_animation_page.dart';
import 'transition_page.dart';

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Topページ"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return TablePage();
                    },
                  ),
                )
              },
              child: Text("tableサンプル", style: TextStyle(fontSize: 20)),
            ),
            TextButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return HeroFromPage();
                    },
                  ),
                )
              },
              child: Text("Heroアニメーションサンプル", style: TextStyle(fontSize: 20)),
            ),
            TextButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return TransitionPage();
                    },
                  ),
                )
              },
              child: Text("遷移時アニメーションサンプル", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
