import 'package:flutter/material.dart';
import 'package:gaming_app/screens/filter_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Theme.of(context).colorScheme.primary,
            child: Text(
              'Settings',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          const SizedBox(height: 20),
          buildListTile(
            'Games',
            Icons.games_rounded,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTile(
            'Filters',
            Icons.filter_list,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(FilterScreen.screenRoute);
            },
          ),
        ],
      ),
    );
  }

  ListTile buildListTile(String title, IconData icon, Function()? onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Colors.blue,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'ElMessiri',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }
}
