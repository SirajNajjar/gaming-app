import 'package:flutter/material.dart';
import 'package:gaming_app/models/game.dart';
import 'package:gaming_app/widgets/game_item.dart';

class GenreGamesScreen extends StatefulWidget {
  static const screenRoute = '/genre-games';
  final List<Game> availableGames;

  const GenreGamesScreen(this.availableGames);

  @override
  State<GenreGamesScreen> createState() => _GenreGamesScreenState();
}

class _GenreGamesScreenState extends State<GenreGamesScreen> {
  late String genreTitle;
  late List<Game> displayGames;

  @override
  void initState() {
    //...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final routeArgument =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final genreId = routeArgument['id'];
    genreTitle = routeArgument['title']!;
    displayGames = widget.availableGames.where(
      (game) {
        return game.genres.contains(genreId);
      },
    ).toList();
    super.didChangeDependencies();
  }

  void _removeGame(String gameId) {
    setState(() {
      displayGames.removeWhere(
        (game) => game.id == gameId,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(genreTitle),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: displayGames.length,
        itemBuilder: (ctx, index) {
          return GameItem(
            id: displayGames[index].id,
            title: displayGames[index].title,
            imageUrl: displayGames[index].imageUrl,
            gameHours: displayGames[index].gameHours,
            gameMode: displayGames[index].gameMode,
            store: displayGames[index].store,
            //  removeItem: _removeGame,
          );
        },
      ),
    );
  }
}
