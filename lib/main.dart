import 'package:flutter/material.dart';
import 'package:gaming_app/app_data.dart';
import 'package:gaming_app/models/game.dart';
import 'package:gaming_app/screens/filter_screen.dart';
import 'package:gaming_app/screens/game_detail_screen.dart';
import 'package:gaming_app/screens/genre_games_screen.dart';
import 'package:gaming_app/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'pc': false,
    'ps': false,
    'xbox': false,
    'switch': false,
  };

  List<Game> _availableGames = gamesData;
  final List<Game> _wishlistGames = [];

  void _changeFilters(Map<String, bool> filterData) {
    setState(
      () {
        _filters = filterData;
        _availableGames = gamesData.where((game) {
          if (_filters['pc'] == true && game.isItForPC != true) {
            return false;
          }

          if (_filters['ps'] == true && game.isItForPS != true) {
            return false;
          }
          if (_filters['xbox'] == true && game.isItForXbox != true) {
            return false;
          }
          if (_filters['switch'] == true && game.isItForSwitch != true) {
            return false;
          }
          return true;
        }).toList();
      },
    );
  }

  void _mangaeWishlist(String gameId) {
    final existingIndex =
        _wishlistGames.indexWhere((game) => game.id == gameId);
    if (existingIndex >= 0) {
      setState(() {
        _wishlistGames.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _wishlistGames.add(
          gamesData.firstWhere((game) => game.id == gameId),
        );
      });
    }
  }

  bool _isWishlist(String id) {
    return _wishlistGames.any((game) => game.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gaming App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ElMessiri',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline5: const TextStyle(
                color: Colors.blueGrey,
                fontSize: 24,
                fontFamily: 'ElMessiri',
                fontWeight: FontWeight.bold,
              ),
              headline6: const TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: 'ElMessiri',
                fontWeight: FontWeight.bold,
              ),
            ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey)
            .copyWith(secondary: Colors.blue),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(_wishlistGames),
        GenreGamesScreen.screenRoute: (ctx) =>
            GenreGamesScreen(_availableGames),
        GameDetailScreen.screenRoute: (ctx) => GameDetailScreen(
              _mangaeWishlist,
              _isWishlist,
            ),
        FilterScreen.screenRoute: (ctx) => FilterScreen(
              currentFilters: _filters,
              saveFilters: _changeFilters,
            ),
      },
    );
  }
}
