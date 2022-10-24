import 'package:flutter/material.dart';
import 'package:gaming_app/models/game.dart';
import 'package:gaming_app/screens/game_detail_screen.dart';

class GameItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int gameHours;
  final GameMode gameMode;
  final Store store;
  // final Function removeItem;
  const GameItem({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.gameHours,
    required this.gameMode,
    required this.store,
    //  this.removeItem,
    required this.id,
  }) : super(key: key);

  String get storeText {
    switch (store) {
      case Store.Epic:
        return 'Epic';
      case Store.Microsoft:
        return 'Microsoft';
      case Store.Steam:
        return 'Steam';
    }
  }

  String get gameModeText {
    switch (gameMode) {
      case GameMode.SinglePlayer:
        return 'Single-Player';
      case GameMode.MultiPlayer:
        return 'MultiPlayer-Player';
      case GameMode.CoOp:
        return 'Co-Op';
    }
  }

  void selectGame(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      GameDetailScreen.screenRoute,
      arguments: id,
    )
        .then(
      (result) {
        // if (result != null) removeItem(result);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectGame(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    'assets/images/games/$imageUrl',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 250,
                  alignment: Alignment.bottomLeft,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8),
                      ],
                      stops: const [
                        0.6,
                        1,
                      ],
                    ),
                  ),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.lock_clock,
                        // ignore: deprecated_member_use
                        color: Theme.of(context).accentColor,
                      ),
                      const SizedBox(width: 5),
                      Text('$gameHours H'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.computer,
                        // ignore: deprecated_member_use
                        color: Theme.of(context).accentColor,
                      ),
                      const SizedBox(width: 5),
                      Text(storeText),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.games,
                        // ignore: deprecated_member_use
                        color: Theme.of(context).accentColor,
                      ),
                      const SizedBox(width: 5),
                      Text(gameModeText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
