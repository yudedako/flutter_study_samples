import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

// 一覧に表示する写真情報を保持するデータクラス
class HeroImages {
  static const List<String> titles = [
    'Bear',
    'Tiger',
    'Turtle',
    'Hedgehog',
    'Dolphin',
    'Butterfly',
    'Rose',
    'Sunflower',
    'Rabbit',
    'Dogs',
    'HighMountain',
    'Lake'
  ];

  static const List<String> urls = [
    'https://images.pexels.com/photos/65289/polar-bear-bear-teddy-sleep-65289.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/145939/pexels-photo-145939.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/847393/pexels-photo-847393.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/50577/hedgehog-animal-baby-cute-50577.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/64219/dolphin-marine-mammals-water-sea-64219.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/672142/pexels-photo-672142.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/39517/rose-flower-blossom-bloom-39517.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/46216/sunflower-flowers-bright-yellow-46216.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/372166/pexels-photo-372166.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/1612371/pexels-photo-1612371.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/2286895/pexels-photo-2286895.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  ];
}

class HeroFromPage extends StatelessWidget {
  const HeroFromPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        children: [
          for (var index = 0; index < HeroImages.titles.length; index++)
            Hero(
              tag: HeroImages.titles[index],
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (context) => HeroToPage(
                        index: index,
                      ),
                    ),
                  );
                },
                child: ImageItem(
                  url: HeroImages.urls[index],
                ),
              ),
            )
        ],
      ),
    );
  }
}

class HeroToPage extends StatelessWidget {
  const HeroToPage({
    required this.index,
    Key? key,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text(HeroImages.titles[index]),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Hero(
            tag: HeroImages.titles[index],
            child: Center(
              child: ImageItem(
                url: HeroImages.urls[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ImageItem extends StatelessWidget {
  const ImageItem({
    required this.url,
    Key? key,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) => Container(
        color: Colors.grey[200],
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      fit: BoxFit.cover,
    );
  }
}
