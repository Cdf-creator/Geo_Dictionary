import 'package:flutter/material.dart';
import 'package:geo_dictionary/dummy_data.dart';
import 'package:geo_dictionary/terminologies_item.dart';
import './models/terminologies.dart';
import './each_word_meaning.dart';

class TerminologiesScreen extends StatelessWidget {
  /*void selectWord(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      EachWordMeaning.routeName,
      arguments: {termsList},
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: Dummy_Items.map(
      (cdf) => TerminologiesItem(cdf.id, cdf.geoTerm),
    ).toList());
  }
}
