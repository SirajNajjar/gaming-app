import 'package:flutter/material.dart';
import 'package:gaming_app/app_data.dart';

class GameDetailScreen extends StatelessWidget {
  static const screenRoute = '/game-detail';
  final Function manageWishlist;
  final Function isWishlist;
  const GameDetailScreen(this.manageWishlist, this.isWishlist);

  Widget buildsectionTitle(String titleText, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.topLeft,
      child: Text(
        titleText,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  Widget buildListViewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }

  Widget buildRateViewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 100,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final gameId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedGame = gamesData.firstWhere((game) => game.id == gameId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedGame.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                'assets/images/games/${selectedGame.imageUrl}',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            buildsectionTitle('Story', context),
            buildListViewContainer(
              Card(
                elevation: 0.3,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    selectedGame.story,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            buildsectionTitle('Game Ratings', context),
            buildRateViewContainer(
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Text(
                          selectedGame.ratings[0].toString(),
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const Text(
                        "Metacritic",
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Text(
                          selectedGame.ratings[1].toString(),
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const Text(
                        "opencritic",
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Text(
                          selectedGame.ratings[2].toString(),
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const Text(
                        "PC Gamer",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isWishlist(gameId) ? Icons.star : Icons.star_border,
        ),
        onPressed: () => manageWishlist(gameId),
      ),
    );
  }
}
