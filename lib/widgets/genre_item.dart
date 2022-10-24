import 'package:flutter/material.dart';
import 'package:gaming_app/screens/genre_games_screen.dart';

class GenreItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  const GenreItem(
      {Key? key, required this.title, required this.imageUrl, required this.id})
      : super(key: key);

  void selectGenre(BuildContext context) {
    Navigator.of(context).pushNamed(
      GenreGamesScreen.screenRoute,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectGenre(context),
      splashColor: const Color(0xFF9B61F2),
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/genres/$imageUrl',
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.4),
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
