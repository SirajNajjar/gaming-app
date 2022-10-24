enum Store {
  // ignore: constant_identifier_names
  Epic,
  // ignore: constant_identifier_names
  Steam,
  // ignore: constant_identifier_names
  Microsoft,
  // ignore: constant_identifier_names
}

enum GameMode {
  // ignore: constant_identifier_names
  SinglePlayer,
  // ignore: constant_identifier_names
  MultiPlayer,
  // ignore: constant_identifier_names
  CoOp,
}

class Game {
  final String id;
  final List<String> genres;
  final String title;
  final String story;
  final String imageUrl;
  final List<int> ratings;
  final int gameHours;
  final Store store;
  final GameMode gameMode;
  final bool isItForPC;
  final bool isItForPS;
  final bool isItForXbox;
  final bool isItForSwitch;

  const Game({
    required this.id,
    required this.genres,
    required this.title,
    required this.story,
    required this.imageUrl,
    required this.ratings,
    required this.gameHours,
    required this.store,
    required this.gameMode,
    required this.isItForPC,
    required this.isItForPS,
    required this.isItForXbox,
    required this.isItForSwitch,
  });
}
