import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pocket-lint.com/r/s/1200x/assets/images/153339-games-news-does-mario-sunbathing-pic-mean-mario-sunshine-for-switch-is-near-image1-9zsg71zrml.jpg')),
              Text('Mario', style: TextStyle(fontWeight: FontWeight.bold)),
              Icon(Icons.verified, color: Colors.blue),
              Text('@SuperMario 1h', style: TextStyle(color: Colors.grey)),
              Icon(Icons.more_horiz),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Text(
                "If you're a Nintendo Switch Online + Expansion Pack member, you can already download the Mario Kart 8 Deluxe - Booster Course Pass at no additional cost now and be ready to play at launch this Friday!... 🎮🎮"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.comment, color: Colors.grey),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      '0',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Icon(Icons.repeat, color: Colors.grey),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      '0',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Text(
                    '2',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const Icon(Icons.share, color: Colors.grey),
            ],
          ),
        )
      ],
    );
  }
}