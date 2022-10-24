import 'package:flutter/material.dart';
import 'package:gaming_app/models/game.dart';
import 'package:gaming_app/widgets/game_item.dart';

class WishlistsScreen extends StatelessWidget {
  const WishlistsScreen({Key? key, required this.wishlistGames})
      : super(key: key);

  final List<Game> wishlistGames;
  @override
  Widget build(BuildContext context) {
    if (wishlistGames.isEmpty) {
      return const Center(
        child: Text('You don\'t have any wishlist Games'),
      );
    } else {
      return ListView.builder(
        itemCount: wishlistGames.length,
        itemBuilder: (ctx, index) {
          return GameItem(
            id: wishlistGames[index].id,
            title: wishlistGames[index].title,
            imageUrl: wishlistGames[index].imageUrl,
            gameHours: wishlistGames[index].gameHours,
            gameMode: wishlistGames[index].gameMode,
            store: wishlistGames[index].store,
            //  removeItem: _removeGame,
          );
        },
      );
    }
  }
}
