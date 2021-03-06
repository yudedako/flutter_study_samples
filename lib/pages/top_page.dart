import 'package:flutter/material.dart';
import 'table_page.dart';
import 'hero_animation_page.dart';
import 'transition_page.dart';
import 'open_container_page.dart';
import 'shared_axis_transition_page.dart';
import 'animation_controller_page.dart';
import 'tween_staggered_page.dart';

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
              child: Text(
                "tableサンプル",
                style: TextStyle(fontSize: 20),
              ),
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
              child: Text(
                "Heroアニメーションサンプル",
                style: TextStyle(fontSize: 20),
              ),
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
              child: Text(
                "遷移時アニメーションサンプル",
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return OpenContainerPage();
                    },
                  ),
                )
              },
              child: Text(
                "animationsパッケージ(OpenContainer)サンプル",
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SharedAxisTransitionPage();
                    },
                  ),
                )
              },
              child: Text(
                "animationsパッケージ(SharedAxisTransition)サンプル",
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return AnimationControllerPage();
                    },
                  ),
                )
              },
              child: Text(
                "AnimationControllerサンプル",
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return TweenStaggeredPage();
                    },
                  ),
                )
              },
              child: Text(
                "Tweenを使ったアニメーションサンプル",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
