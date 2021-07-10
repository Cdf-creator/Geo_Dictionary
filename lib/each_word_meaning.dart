//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:geo_dictionary/image-for-eachword.dart';
//import 'package:geo_dictionary/favorite_widget_state.dart';

import './dummy_data.dart';
import 'dummy_data.dart';

class EachWordMeaning extends StatelessWidget {
  //final Terminology geo = termsList[];
  //final Terminology geo;
  //EachWordMeaning(this.geo);
  final Function toggleFavorite;
  final Function isWordFavorite;
  EachWordMeaning(this.toggleFavorite, this.isWordFavorite);

  static const routeName = '/words-meaning';

  @override
  Widget build(BuildContext context) {
    final terminologyId = ModalRoute.of(context).settings.arguments as String;
    final selectedTerminology = Dummy_Items.firstWhere(
      (terminology) => terminology.id == terminologyId,
    );
    return LayoutBuilder(builder: (cdf, constraints) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Container(
              decoration: new BoxDecoration(color: Colors.indigo),
              child: Text(selectedTerminology.geoTerm,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'RobotoCondensed',
                    //fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          extendBodyBehindAppBar: true,
          /*appBar: AppBar(
        title: Text('GeoDictionary'),
      ),*/
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(children: <Widget>[
                  ClipRRect(child: ImageForEachWord()),
                ]),
                SizedBox(
                  height: constraints.maxHeight * 0.01,
                ),
                ListTile(
                  title: Text(selectedTerminology.location,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[800])),
                  subtitle: Text(selectedTerminology.country,
                      style: TextStyle(letterSpacing: 1)),
                  trailing: IconButton(
                    icon: Icon(
                      isWordFavorite(terminologyId)
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: isWordFavorite(terminologyId) ? Colors.red : null,
                    ),
                    onPressed: () => toggleFavorite(terminologyId),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(selectedTerminology.description,
                      style: TextStyle(color: Colors.grey[600], height: 1.4)),
                ),
              ],
            ),
          ));
    });
  }
}
