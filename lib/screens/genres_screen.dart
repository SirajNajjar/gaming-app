import 'package:flutter/material.dart';
import 'package:gaming_app/app_data.dart';
import 'package:gaming_app/widgets/genre_item.dart';

class GenresScreen extends StatelessWidget {
  const GenresScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 7 / 8,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      children: genresData
          .map(
            (genreData) => GenreItem(
              id: genreData.id,
              title: genreData.title,
              imageUrl: genreData.imageUrl,
            ),
          )
          .toList(),
    );
  }
}
