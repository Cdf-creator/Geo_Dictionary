import 'package:flutter/material.dart';
import 'package:geo_dictionary/models/terminologies.dart';
import './dummy_data.dart';
import './terminologies_item.dart';

class FavoritedScreen extends StatelessWidget {
  final List<Terminology> favoriteWords;
  FavoritedScreen(this.favoriteWords);
  @override
  Widget build(BuildContext context) {
    if (favoriteWords.isEmpty) {
      return Center(
        child: Text(
          'You Have No Favorites Yet - Start Adding Some!',
          style: Theme.of(context).textTheme.headline6,
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return TerminologiesItem(
            favoriteWords[index].id,
            favoriteWords[index].geoTerm,
          );
        },
        itemCount: favoriteWords.length,
      );
    }
  }
}
