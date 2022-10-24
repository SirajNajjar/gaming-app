import 'package:flutter/material.dart';
import 'package:gaming_app/models/game.dart';
import 'package:gaming_app/screens/wishlist_screen.dart';

import '../screens/genres_screen.dart';
import '../widgets/app_drawer.dart';

class TabsScreen extends StatefulWidget {
  //const TabsScreen({Key key, this.wishlistGames}) : super(key: key);
  final List<Game> wishlistGames;

  const TabsScreen(this.wishlistGames);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  int _selectedScreenIndex = 0;
  late List<Map<String, Object>> _screens;
  @override
  void initState() {
    _screens = [
      {
        'Screen': const GenresScreen(),
        'Title': 'Games Genres',
      },
      {
        'Screen': WishlistsScreen(wishlistGames: widget.wishlistGames),
        'Title': 'Wishlist Games',
      }
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['Title'] as String),
        centerTitle: true,
      ),
      drawer: const AppDrawer(),
      body: _screens[_selectedScreenIndex]['Screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedScreenIndex,
        unselectedItemColor: Colors.white,
        onTap: _selectScreen,
        backgroundColor: Colors.blueGrey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Genres',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Wishlist',
          ),
        ],
      ),
    );
  }
}
